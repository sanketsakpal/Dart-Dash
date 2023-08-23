// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  //  Throwing Errors
  final person = Person(age: 10);
  print(person);
  person.age = 0;
  print(person);

  try {
    // errors are not created to be caught, so if you get an error
// make sure that you change your program in order to avoid that error
// exceptions however are meant to be caught
    person.age = -10;
    print(person);
  } catch (e) {
    print(e);
  } finally {
    print(person);
  }
}

class Person {
  int _age;
  Person({
    required int age,
  }) : _age = age;

  int get age => _age;

  set age(int value) {
    if (age < 0) {
      throw ArgumentError('Age cannot be negative.');
    }
    _age = value;
  }

  @override
  String toString() => 'Person(age: $age)';
}
