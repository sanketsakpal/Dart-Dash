void main(List<String> args) {
  // Sum of Iterable
  final sumOfIntegers = [1, 2, 3].sum;
  final sumOfDoubles = [2.2, 3.3, 4.4].sum;
  print(sumOfIntegers);
  print(sumOfDoubles);
}

extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((value, element) => value + element as T);
}
