void main(List<String> args) {
  // Functions as First Class Citizens

  // you can pass function to another function to perform operations
  print(minus());
  print(performOperation(10, 20, (p0, p1) => p0 + p1));
  print(performOperation(30, 20, (p0, p1) => p0 - p1));
}

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
int performOperation(int a, int b, int Function(int, int) operation) =>
    operation(a, b);
