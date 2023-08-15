// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // Inheriting Constructors
//constructor are not inherited by default
  final mom = Mom();
  print(mom.role);
}

enum Role { mom, dad, son, daughter, grandpa, grandma }

class Person {
  final Role role;
  Person({
    required this.role,
  });
}

class Mom extends Person {
  Mom() : super(role: Role.mom);
}

class Dad extends Person {
  Dad() : super(role: Role.dad);
}
