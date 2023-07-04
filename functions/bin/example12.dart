void main(List<String> args) {
  // Optional Positional Parameters
  makeUpperCase();
  makeUpperCase("foo");
  makeUpperCase(null);
  makeUpperCase("foo", "bar");
  // makeUpperCase("foo", null); invalid code
  makeUpperCase(null, "bar");
}

void makeUpperCase([String? name, String lastName = "Bar"]) {
  print(name?.toUpperCase());
  print(lastName.toUpperCase());
}
