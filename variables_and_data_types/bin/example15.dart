void main(List<String> args) {
  // Various Data Types

  const int someInteger = 10; // whole numbers
  print(someInteger);

  const double someDouble = 10.4;
  print(someDouble);

  const String someSting = "hello";
  print(someSting);

  const bool someBool = true;
  print(someBool);

  const List<int> someList = [1, 2, 3, 4];
  print(someList);

  const Map<String, dynamic> someMap = {
    "name": "test",
    "age": 1,
  };
  print(someMap);

  const Set<int> someSet = {1, 2, 3};
  print(someSet);

  const dynamic someNull = null;
  print(someNull);

  const Symbol someSymbol = #symbolNull;
  print(someSymbol);
}
