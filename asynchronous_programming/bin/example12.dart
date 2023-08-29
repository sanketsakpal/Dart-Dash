import 'dart:async';

Future<void> main(List<String> args) async {
  // Absorbing Stream Errors

  await for (final name in getNames().absorbErrorUsingHandleError()) {
    print(name);
  }
  await for (final name in getNames().absorbErrorsUsingHandlers()) {
    print(name);
  }
  await for (final name in getNames().absorbErrorsUsingTransformer()) {
    print(name);
  }
}

Stream<String> getNames() async* {
  yield "John";
  yield "Jane";
  yield "Jack";
  throw "all names";
}

extension AbsorbErrors<T> on Stream<T> {
  Stream<T> absorbErrorUsingHandleError() => handleError((error, _) {});

  Stream<T> absorbErrorsUsingHandlers() => transform(
      StreamTransformer.fromHandlers(handleError: (_, __, sink) => sink.close));

  Stream<T> absorbErrorsUsingTransformer() => transform(
        StreamErrorAbsorber(),
      );
}

class StreamErrorAbsorber<T> extends StreamTransformerBase<T, T> {
  @override
  Stream<T> bind(Stream<T> stream) {
    final controller = StreamController<T>();

    stream.listen(
      controller.sink.add,
      onError: (_) {},
      onDone: controller.close,
    );

    return controller.stream;
  }
}
