import 'dart:isolate';

void main(List<String> arguments) async {
  //  Simple Isolate
  await for (final msg in getMessages().take(10)) {
    print(msg);
  }

  // 1
  final receivePort = ReceivePort();
  // 2
  final isolate = await Isolate.spawn(
    downloadAndCompressTheInternet,
    receivePort.sendPort,
  );
  // 3
  receivePort.listen((message) {
    print(message);
    receivePort.close();
    isolate.kill();
  });
}

Stream<String> getMessages() {
  final rp = ReceivePort();
  return Isolate.spawn(_getMessages, rp.sendPort)
      .asStream()
      .asyncExpand((event) => rp)
      .takeWhile((element) => element is String)
      .cast();
}

Future<void> _getMessages(
  SendPort sp,
) async {
  await for (final now in Stream.periodic(
    Duration(milliseconds: 200),
    (_) => DateTime.now().toIso8601String(),
  )) {
    sp.send(now);
  }
}

// 4
void downloadAndCompressTheInternet(SendPort sendPort) {
  sendPort.send(42);
}
