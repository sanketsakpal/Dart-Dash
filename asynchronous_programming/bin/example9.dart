import 'dart:async';

void main(List<String> args) async {
  // Stream Controllers

  final controller = StreamController();
  controller.sink.add("hello");
  controller.sink.add("world");

  await for (final value in controller.stream) {
    print(value);
  }
  controller.close();
}
