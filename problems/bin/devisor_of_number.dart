import 'dart:io';

void main(List<String> args) {
  stdout.write("enter the number\n");
  int? number = int.parse(stdin.readLineSync() ?? "0");

  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      print(i);
    }
  }
}
