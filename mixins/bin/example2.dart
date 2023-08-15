// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // Mixins and Function Parameters

  final test = Person(firstName: "test", lastName: "mixins");

  print(test.fullName);
  print(getFullName(test));
}

// how you can accept mixin as a data type

String getFullName(HasFullName obj) {
  return obj.fullName;
}

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  // TODO: implement firstName
  final String firstName;

  @override
  // TODO: implement lastName
  final String lastName;
  Person({
    required this.firstName,
    required this.lastName,
  });
}
