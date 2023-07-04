void main(List<String> args) {
  // Required Named Parameters

  // doSomething();//invalid code
  doSomething(name: "foo");
  // doSomething(name: null); // invalid code
  // you pass null value if your parameter is optional
}

void doSomething({required String name}) {
  print("hello $name");
}
