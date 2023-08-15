// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:uuid/uuid.dart';

void main(List<String> args) {
  // Mixins with Equality Implementation

  final uid1 = const Uuid().v4();
  final uid2 = const Uuid().v4();

  final person1 = Person(id: uid1, name: "jhon", age: 30);
  final person2 = Person(id: uid1, name: "jhon", age: 30);
  final person3 = Person(id: uid2, name: "jhon", age: 30);

  if (person1 == person3) {
    print('person1 and person2 are equal');
  } else {
    print('person1 != person2');
  }

  if (person1 == person2) {
    print('Person 1 and Person 1 Again are equal');
  } else {
    print('Person 1 and Person 1 Again are NOT equal');
  }

  if (person2 == person3) {
    print('Person 1 Again and Person 2 are equal');
  } else {
    print('Person 1 Again and Person 2 are NOT equal');
  }
}

mixin HasIdentifier {
  String get id;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id;
}

class Person with HasIdentifier {
  @override
  final String id;
  final String name;
  final int age;
  Person({
    required this.id,
    required this.name,
    required this.age,
  });
}
