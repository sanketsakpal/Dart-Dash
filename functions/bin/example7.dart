void main(List<String> args) {
  // Non-Optional Named Parameters with Default Values

  doSomething();
  doSomething(name: "bar");
  // doSomething(name: null);// it will give us error
}

void doSomething({String name = "foo"}) {
  print("hello $name");
}
