// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  //  Extension Overrides

  // why  extension name is needed

  final jack = Person(
    name: 'Jack',
    age: 20,
  );
  // print(jack.description); // don't gave the name to extension and see what happen

  print(ShortDescription(jack).description);
  print(LongDescription(jack).description);
}

class Person {
  final String name;
  final int age;
  Person({
    required this.name,
    required this.age,
  });
}

// short des
extension ShortDescription on Person {
  String get description => '$name $age';
}

// log des

extension LongDescription on Person {
  String get description => '$name is $age years old';
}
