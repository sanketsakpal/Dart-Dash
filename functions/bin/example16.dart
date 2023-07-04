void main(List<String> args) {
  // Returning Functions from Functions
  final fun = doSomething(10, 20);
  print(fun());
  print(fun); // it will return thr data type of functions
}

int Function() doSomething(
  int lhs,
  int rhs,
) =>
    () => lhs + rhs;
