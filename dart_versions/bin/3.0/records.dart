void main(List<String> args) {
  final value = giveMeSomeDoubles();
  print(value.$1);
// records are immutable
// records does not have setters because they are immutable
// records are type safe

  // pattern
  final (point, greeting) = giveMeSomeDoubles();
  print(point);
}

(double, String) giveMeSomeDoubles() {
  return (4.5, 'Hey!');
}
// In summary, Records are real values. You can store them in variables, pass them to and from functions and store
// them in lists.
