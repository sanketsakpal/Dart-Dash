void main(List<String> args) {
  // Named Parameters

  sayHelloTo(
      "JON"); // if you don't pass the parameter here then it will give you an error
  sayHelloToThe(); // we are using optional var so if you don't pass any value then it will print null
  sayHelloToThe(name: "bob");
  sayHelloToThe(
      name:
          null); // also pass null value to the name parameter because it is an optional value but if you assign any
  // default value to the name parameter then you can not pass null value to the parameter
}

void sayHelloTo(String name) {
  print("hello $name!");
}

// if you used curly braces around variable then you must assign the value to that parameter or var
// or they must be optional
void sayHelloToThe({String? name}) {
  print("hello $name!");
}
