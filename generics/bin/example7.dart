// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // Generic Classes with Generic Extensions
  final tuple = Tuple(left: 1, right: 2);
  print(tuple);
  final swapped = tuple.swap();
  print(swapped);
  print(tuple.sum);
}

class Tuple<L, R> {
  final L left;
  final R right;
  Tuple({
    required this.left,
    required this.right,
  });

  @override
  String toString() => 'Tuple(left: $left, right: $right)';
}

extension<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(left: right, right: left);
}

extension<L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}
