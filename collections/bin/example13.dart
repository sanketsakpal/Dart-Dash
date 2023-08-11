void main(List<String> args) {
  // Collection Comprehensions

  final String = "adasdhiadhd";

  var result = {
    for (final char in String.split("")) 'abc'.contains(char) ? null : char
  }
    ..removeAll([null])
    ..cast();

  print(result);

  print("-------------");
  final allNumbers = Iterable.generate(100);
  final evenNumber = [
    for (final number in allNumbers)
      if (number % 2 == 0) number
  ];

  final evenNumbers = allNumbers.where(
    (element) => element % 2 == 0,
  );

  print(evenNumber);
  print(evenNumbers);
  print("-------------");
  List name = ["tests", "rest", "pest"];

  final nameAndLength = {for (final str in name) name: name.length};
  print(nameAndLength);
}
