// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> arguments) {
//  exceptions and errors

// exception mean to be caught where as errors are not mean to caught

// Throwing in Class Constructors

  tryCreatingPerson(age: -20);
  tryCreatingPerson(age: 20);
  tryCreatingPerson(age: 120);
}

class Person {
  final int age;
  Person({
    required this.age,
  }) {
    if (age < 0) {
      throw Exception("age must be positive and greater than 0");
    } else if (age > 100) {
      throw Exception("age must be greater than 100");
    }
  }
}

void tryCreatingPerson({final age = 0}) {
  try {
    print(Person(age: age).age);
  } catch (e) {
    print(e);
  }
}
