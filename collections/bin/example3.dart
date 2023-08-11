
void main(List<String> args) {
  // how set work internally
  final person1 = Person(name: "ds", age: 10);
  final person2 = Person(name: "ds", age: 10);
  final dog = Dog(name: "dsx", age: 10);

  final persons = {
    person1,
    person2,
  };

  print(persons);
  print(person1.hashCode);
  print(person2.hashCode);
  print(dog.hashCode);
  final beings = {dog, person1};
  print(beings);
}

class Person {
  final String name;
  final int age;
  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Person(name: $name, age: $age)';

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}

class Dog {
  final String name;
  final int age;
  Dog({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Dog(name: $name, age: $age)';

  @override
  bool operator ==(covariant Dog other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
