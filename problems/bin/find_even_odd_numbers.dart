import 'dart:io';

void main(List<String> args) {
  stdout.write("enter the number\n");
  int? number = int.parse(stdin.readLineSync() ?? "0");

  if (number % 2 == 0) {
    print(number % 2);
    print("Even number entered ");
  } else {
    print(number % 2);
    print("Odd number entered ");
  }
// using ternary operator
  number % 2 == 0
      ? print("Even number entered ")
      : print("Odd number entered ");
}
