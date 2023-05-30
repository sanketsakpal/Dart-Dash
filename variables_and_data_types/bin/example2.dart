void main(List<String> args) {
  final age = 30;
  print(age);

  // invalid code
  // age = 4; // we can not assign new value to final variables but its internal value can be change.
  age.toString();
  print("--- test final int : - $age"); // internal value can be change.

  final age1 = [1, 2, 3];
  print(age1);
  // age1 = [1, 2, 3, 4];
  // we can not assign value for final variables , it not allow at compile time.
  age1.removeAt(
      0); // we can change the final variable value at compile time and
  // it not give any error or exception at run time also.
  print(age1);
}
