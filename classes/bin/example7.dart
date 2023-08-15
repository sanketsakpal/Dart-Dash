// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // Static Properties and Static Methods
  final foo = Person();

  // foo.name = 'foo';  // this wil gave us error we are using static key word and it will created only once so we can use like this

  Person.name = "foo";
  print(Person.name);
  Person.name = "test";

  print(Person.name);

  // it will overwrite the name

  print(Car.carInstantiated);
  Car(name: "my car");
  print(Car.carInstantiated);
  Car(name: "your car");
  print(Car.carInstantiated);
}

class Person {
  static String name = ' ';
}

// how static properties and static methods works
// this is just and example do not used it like this
class Car {
  static int _carInstantiated = 0;
  static int get carInstantiated => _carInstantiated;
  static void incrementCarsInstantiated() => _carInstantiated++;

  final String name;
  Car({
    required this.name,
  }) {
    incrementCarsInstantiated();
  }
}
