void main(List<String> args) {
  // Mixing Various Parameter Styles
  describeFully("test", lastName: "foo");
  describeFully("test", lastName: null);
  describeFully(
    "test",
  );
  // describeFully(null, lastName: "foo"); invalid
}

void describeFully(
  String firstName, {
  String? lastName = 'bar',
}) {
  print('Hello $firstName $lastName');
}
