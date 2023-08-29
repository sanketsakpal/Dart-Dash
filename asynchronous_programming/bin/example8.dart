void main(List<String> args) async {
  //  Yielding Streams
  await for (var element in allNames1()) {
    print(element);
  }
}

Stream<String> maleNames() async* {
  yield 'John';
  yield 'Peter';
  yield 'Paul';
}

Stream<String> femaleNames() async* {
  yield 'Mary';
  yield 'Jane';
  yield 'Sue';
}

Stream<String> allNames() async* {
  await for (final maleName in maleNames()) {
    yield maleName;
  }

  await for (final femaleName in femaleNames()) {
    yield femaleName;
  }
}

Stream<String> allNames1() async* {
  yield* maleNames();

  yield* femaleNames();
}
