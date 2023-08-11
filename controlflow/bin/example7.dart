import 'dart:io';

void main(List<String> args) {
  // Switching Over Integer Values

  do {
    stdout.write("enter your age or type exit");
    final input = stdin.readLineSync();
    if (input == "exit") {
      break;
    } else if ((input?.length ?? 0) == 0 || input == null) {
      stdout.writeln('Invalid age. Try again!');
      continue;
    }

    final age = int.tryParse(input);
    if (age == null) {
      stdout.writeln("invalid age");
      continue;
    }

    switch (age) {
      case 10:
        stdout.writeln("you are 10 year old , great!!!");
        break;
      case 20:
        stdout.writeln("you are young , great!!!");
        break;
      case 30:
        stdout.writeln("you are adult");
        break;
      default:
        stdout.writeln("you are age is $age old ");
    }
  } while (true);
}
