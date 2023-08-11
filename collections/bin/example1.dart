void main(List<String> arguments) {
  //  Lists

  const name = ["foo", "bar", "baz", "lark"];
  for (var element in name) {
    print(element);
  }

  print("--------------------------------");
  for (var element in name.reversed) {
    print(element);
  }

  print("--------------------------------");

  if (name.contains('bar')) {
    print("welcome bar in list ");
  }

  print("--------------------------------");

  name.where(
    (element) => element.startsWith('b'),
  );

  print(name);

  print("--------------------------------");

  bool stringStartWithB(String value) {
    return value.startsWith("b");
  }

  name.where(stringStartWithB);

  print(name);

  print("--------------------------------");

  for (var element in name.where((element) => element.startsWith('b'))) {
    print(element);
  }

  print("--------------------------------");

// subscript

  print(name[0]);
  print(name[1]);

  print("--------------------------------");

  try {
    print(name[4]);
  } catch (e) {
    print(e);
  }

  print("--------------------------------");
  name.sublist(1).forEach((element) {
    print(element);
  });
// start index in inclusive
  print("--------------------------------");
  name.sublist(1, 3).forEach((element) {
    print(element);
  });
  // last index is exclusive
  print("--------------------------------");

  // lists are internally mutable

  final age = [20, 30, 40];

  age.add(50);
  age.add(60);
  print(age);

  print("--------------------------------");

  const names1 = ['Foo', 'Bar', 'Baz', 'Qux'];

  const names2 = ['Foo', 'Bar', 'Baz', 'Qux'];
// order is matter in list
  if (names1 == names2) {
    print('names1 and names2 are equal');
  } else {
    print('names1 and names? are not equal');
  }
  print("--------------------------------");

  name.map((str) => str.toUpperCase()).forEach(print);

  print("--------------------------------");

  final number = [4, 5, 8];

  var sum = 0;
  for (final numbers in number) {
    sum = sum + numbers;
  }
  print(sum);
  print("--------------------------------");
  // so we can reduce this code

  final sums = number.fold(
    0,
    (previousValue, element) => previousValue + element,
  );
  print(sums);

  print("--------------------------------");

  final totalLength =
      name.fold(0, (previousValue, element) => previousValue + element.length);
  print(totalLength);

  print("--------------------------------");
}
