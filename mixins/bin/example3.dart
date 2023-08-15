// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // Mixins with Logic

  final whisker = Cat(age: 3);
  print(whisker.age);

  whisker.incrementAge();
  print(whisker.age);
}

mixin HasAge {
  abstract int age;
  void incrementAge() => age++;
}

class Cat with HasAge {
  @override
  int age = 0;
  Cat({
    required this.age,
  });
}
