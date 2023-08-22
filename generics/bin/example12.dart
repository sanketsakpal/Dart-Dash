void main(List<String> args) {
  //  Generic Class Properties

  final bla = Person(age: 20);
  print(bla.ageRounded);
  final r = Person(age: 30.6);
  print(r.ageRounded);
}

class Person<T extends num> {
  final T age;
  const Person({
    required this.age,
  });

  int get ageRounded => age.round();
}
