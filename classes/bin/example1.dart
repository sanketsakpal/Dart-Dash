// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> arguments) {
  // Simple Class

// class are blue print of logics

  const person1 = Person(age: 23, name: "sd");
}

class Person {
  final String name;
  final int age;
  // constructors are kind like a special functions with the name of class
  const Person({
    required this.name, // this.name is short hand for passing constructor fot the name parameter other wise we have to done like required String name something like this
    required this.age,
  });
}
