void main(List<String> args) {
  // Range on int

  print(1.to(10));
  print(1.to(10, inclusive: false));
  print(10.to(1));
  print(10.to(1, inclusive: false));
  print(10.to(10));
  print(10.to(10, inclusive: false));
}
// dart does not have any method to create ranges
// creating ranges in dart

extension on int {
  Iterable<int> to(int end, {bool inclusive = true}) => end > this
      ? [for (var i = this; i < end; i++) i, if (inclusive) end]
      : [for (var i = this; i > end; i--) i, if (inclusive) end];
}
