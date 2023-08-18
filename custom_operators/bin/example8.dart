// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // Operators on Class Definitions

  final meThisYear = Person(age: 30);
  print('Me this year is = $meThisYear');
  final meNextYear = meThisYear + 1;
  print(meNextYear);
}

class Person {
  final int age;
  Person({
    required this.age,
  });
  Person operator +(int age) => Person(age: this.age + age);
  @override
  String toString() => 'Person(age: $age)';
}
