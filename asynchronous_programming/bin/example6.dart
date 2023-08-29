Future<void> main(List<String> args) async {
  //  stream reduce
  int sum = 0;

  await for (final age in getAllAges()) {
    sum += age;
  }
  print("some of all number $sum");

  final sum1 = await getAllAges().reduce((a, b) => add(a, b));

  print("some of number $sum1");
}

int add(int a, int b) => a + b;
Stream<int> getAllAges() async* {
  yield 10;
  yield 20;
  yield 30;
  yield 40;
  yield 50;
}
