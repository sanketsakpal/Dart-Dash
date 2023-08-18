void main(List<String> args) {
  // Subtracting a String from Another String

  print('Foo Bar' - 'Foo');
  print('Bar' - 'Bar');
  print('Foo Bar' - 'Bar');
}

extension Remove on String {
  String operator -(String other) {
    return replaceAll(other, "");
  }
}
