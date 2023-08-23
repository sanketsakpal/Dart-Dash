void main(List<String> args) {
  //  Rethrow

  try {
    tryCreatingPerson(age: 20);
    tryCreatingPerson(age: -1);
    tryCreatingPerson(age: 141);
  } catch (error, stackTrace) {
    print(error);
    print(stackTrace);
  }
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
  } on InvalidAgeException {
    rethrow;
  } catch (exception, stackTrace) {
    print(exception);

    print(stackTrace);
  }
}
