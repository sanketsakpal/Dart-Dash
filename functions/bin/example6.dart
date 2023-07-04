void main(List<String> args) {
  // Default Value for Named Parameters
  describeSomething();
  describeSomething(name: null);
  describeSomething(name: "bob");
}

// parameter is optional but is has it's default value
void describeSomething({String? name = "hello world"}) {
  print("something $name");
}
