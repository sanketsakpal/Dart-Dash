void main(List<String> args) {
  int n1 = 0, n2 = 1, n3, count = 10;

  for (var i = 0; i < count; i++) {
    n3 = n1 + n2;

// swap numbers
    n1 = n2;
    n2 = n3;
    print(n3);
  }
}
