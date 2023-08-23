// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // Custom Exception Class

  tryCreatingPerson(age: 120);
  tryCreatingPerson(age: -20);
  tryCreatingPerson(age: 20);
}

class InvalidAgeException implements Exception {
  final int age;
  final String message;
  InvalidAgeException(
    this.age,
    this.message,
  );

  @override
  String toString() => 'InvalidAgeException(age: $age, message: $message)';
}

class Person {
  final int age;
  Person({
    required this.age,
  }) {
    if (age < 0) {
      throw InvalidAgeException(age, 'Age cannot be negative');
    } else if (age > 100) {
      throw InvalidAgeException(age, 'Age cannot be greater than 100');
    }
  }
}

void tryCreatingPerson({final age = 0}) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
  }
}
