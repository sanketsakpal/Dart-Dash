// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

void main(List<String> args) async {
  // Stream Timeout Example

  try {
    await for (final name in getNames().withTimeoutBetweenEvents(const Duration(
      seconds: 3,
    ))) {
      print(name);
    }
  } on TimeoutBetweenEventsException catch (e, stackTrace) {
    print('TimeoutBetweenEventsException: $e');
    print('Stack trace: $stackTrace');
  }
}

extension WithTimeoutBetweenEvents<T> on Stream<T> {
  Stream<T> withTimeoutBetweenEvents(Duration duration) =>
      transform(TimeoutBetweenEvents(duration: duration));
}

Stream<String> getNames() async* {
  yield 'John';
  await Future.delayed(const Duration(seconds: 1));
  yield 'Jane';
  await Future.delayed(const Duration(seconds: 10));
  yield 'Doe';
}

class TimeoutBetweenEvents<E> extends StreamTransformerBase<E, E> {
  final Duration duration;
  TimeoutBetweenEvents({
    required this.duration,
  });
  @override
  Stream<E> bind(Stream<E> stream) {
    StreamController<E>? controller;
    StreamSubscription<E>? subscription;
    Timer? timer;

    controller = StreamController(
      onListen: () {
        subscription = stream.listen(
          (data) {
            timer?.cancel();
            timer = Timer.periodic(duration, (timer) {
              controller?.addError(TimeoutBetweenEventsException("timeout"));
            });
            controller?.add(data);
          },
          onError: controller?.addError,
          onDone: controller?.close,
        );
      },
      onCancel: () {
        subscription?.cancel();
        timer?.cancel();
      },
    );
    return controller.stream;
  }
}

class TimeoutBetweenEventsException implements Exception {
  final String message;
  TimeoutBetweenEventsException(this.message);
}
