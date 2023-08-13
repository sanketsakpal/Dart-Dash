// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // Enhanced Enumerations

  final foo = Person(name: "FO0", car: Car.teslaModelX);

  switch (foo.car) {
    case Car.teslaModelX:
      print("foo has tesla car model ${foo.car}");
      break;

    case Car.teslaModelM:
      print("foo has tesla car model ${foo.car}");
      break;
    case Car.teslaModelT:
      print("foo has tesla car model ${foo.car}");
      break;
    default:
  }
}

class Person {
  final String name;
  final Car car;
  Person({
    required this.name,
    required this.car,
  });
}

enum Car {
  teslaModelX(
    manufacture: 'tesla',
    model: 'Model X',
    year: 2023,
  ),
  teslaModelM(
    manufacture: 'tesla',
    model: 'Model M',
    year: 2023,
  ),
  teslaModelT(
    manufacture: 'tesla',
    model: 'Model T',
    year: 2023,
  );

  final String manufacture;
  final String model;
  final int year;
  const Car({
    required this.manufacture,
    required this.model,
    required this.year,
  });
}
