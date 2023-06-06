void main(List<String> args) {
  // binary infix operator

  const age = 50;
  print(age + 20);
  print(age); //50
  print(age - 20);
  print(age * 20);
  print(age / 20);
  print(age ~/ 20);
  print(age % 20);
  print(age == 20);
  print(age > 20);
  print(age < 20);
  print(age >= 20);
  print(age <= 20);
  print(age != 20);
  // bit wise infix operator
  print(age & 20);
  print(age | 20);
  print(age ^ 20); //xor

  // shift operator

  print(age << 20); // bitwise left shift

  print(age >> 20); // bitwise right shift
  // binary infix does not change the value of variable
}
