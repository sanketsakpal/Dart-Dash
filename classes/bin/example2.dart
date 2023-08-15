void main(List<String> args) {
  // constructors

  // class are have different type of constructors

  const foo = Person.foo(); // this is a named constructor
  print(foo.name);

  const person = Person.other();
  print(person.name);
  print(person.age);
}

class Person {
  final String name;
  final int age;
  // constructors are kind like a special functions with the name of class
  const Person(
    this.name, // this.name is short hand for passing constructor fot the name parameter other wise we have to done like required String name something like this
    this.age,
  );

  const Person.foo()
      : name = "foo",
        age = 20;

  const Person.other({
    String? name,
    int? age,
  })  : name = name ?? 'Baz',
        age = age ?? 30;
}
