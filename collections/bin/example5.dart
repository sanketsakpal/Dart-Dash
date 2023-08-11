void main(List<String> args) {
  // Iterable

  // iterable is lazily evaluated list

  final iterate = Iterable.generate(
    20,
    (index) => getName(index),
  );
  print(iterate);
  print("--------=========-");
  for (var element in iterate.take(2)) {
    print("count $element");
  }
}

String getName(int i) {
  print("got it ");
  return 'test $i';
}
