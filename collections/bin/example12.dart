import 'package:test/test.dart';

void main(List<String> args) {
  //  Spread Operator with Collections
  addArrayToWrong();
  print("------------------------");
  addArrayToRight();
}

void addArrayToWrong() {
  final names1 = ['Foo 1', 'Bar 1', 'Baz 1'];
  final names = ['Foo 2', 'Bar 2', 'Baz 2'];
  final alLNamesWrong =
      names1; // same memory space , it wrong if you print name1 after this two line then it will add the values in names 1 also

  alLNamesWrong.addAll(names);
  print(names1);
  print(names);
  print(alLNamesWrong);
}

void addArrayToRight() {
  final names1 = ['Foo 1', 'Bar 1', 'Baz 1'];
  final names = ['Foo 2', 'Bar 2', 'Baz 2'];
  final alLNamesRight = {
    ...names1,
    ...names
  }; // spread operator we can also used with []

  alLNamesRight.addAll(names);
  print(names1);
  print(names);
  print(alLNamesRight);
  print("------------------------");
  final anotherWay = {...names1}..addAll(names);
  print(anotherWay);
}
