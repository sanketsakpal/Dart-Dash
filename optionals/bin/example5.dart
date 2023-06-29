void main(List<String> args) {
  // Nullable Type Promotion

  final String? firstName = null;
  if (firstName == null) {
    print("first name is null");
  } else {
    print(firstName.length);
  }
}
