void main(List<String> args) async {
  // Stream

  await for (final value in getNumbers()) {
    print(value);
  }

  try {
    await for (final value in getNames()) {
      print(value);
    }
  } catch (e) {
    print(e);
  }
}

List<String> names() => ['John', 'Doe'];

Stream<int> getNumbers() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  throw Exception('Something went wrong');
//  yield "Doe"; // Dead Code, cannot yield after throwing an exception
}
