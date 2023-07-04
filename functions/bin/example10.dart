void main(List<String> args) {
  //  Ordering of Named Parameters
  describePerson();
  describePerson(name: "foo", age: 50);
  describePerson(age: 50);
  describePerson(name: "bar");
  describePerson(age: 40, name: "jon");
}

void describePerson({String? name, int? age}) {
  print("hello $name ,your age is $age years old");
}
