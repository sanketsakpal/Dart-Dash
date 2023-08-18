void main(List<String> args) {
  // Subtracting an Iterable from Another Iterable

  print([4, 5, 6] - [5]);

  print(["sanket", "test"] - ['test']);
}

extension Remove<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) =>
      where((element) => !other.contains(element));
}
