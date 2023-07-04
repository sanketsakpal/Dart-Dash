void main(List<String> args) {
  // The Return Keyword
  print(add());
  print(add(3));
  print(add(1, 2));
}

int add([int a = 1, int b = 2]) {
  return a + b;
}
