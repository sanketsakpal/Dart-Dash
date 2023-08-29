Future<void> main(List<String> args) async {
  // Another Example of Stream.asyncExpand

  final names3Time = getNames().asyncExpand((event) => times3(event));
  await for (final names in names3Time) {
    print(names);
  }
}

Stream<String> getNames() async* {
  yield 'Bob';
  yield 'Alice';
  yield 'Joe';
}

Stream<String> times3(String value) => Stream.fromIterable(
      Iterable.generate(3, (_) => value),
    );
