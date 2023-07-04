void main(List<String> args) {
  // Omitting Return Types
  printHello();
}

printHello() {
  print("hello");
}
// in every typ safe language you must have to add return type to function ,
// however in dart you don't get any error but it's give you a warning if you are comment out the lint rules in analysis file 
// if you don not mention any type then it will assign dynamic 