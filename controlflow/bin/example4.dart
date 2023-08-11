void main(List<String> args) {
  //   While Loops

  const name = ["foo", "Bar", "Baz", "jon"];
// condition in beginning
  // is a loop its evaluate condition if the condition is match then loop is continue
  var counter = 0;
  while (counter < name.length) {
    print(name[counter]);
    counter++;
  }

  print("----------------------------");
  counter = -1;
  while (++counter < name.length) {
    print(name[counter]);
    // counter++;
  }
  print("----------------------------");

  counter = name.length;
  while (--counter >= 0) {
    print(name[counter]);
  }

  print("----------------------------");

  counter = 0;
  do {
    print(name[counter++]);
  } while (counter < name.length);

  print("----------------------------");

  counter = 0;
  do {
    print(name[counter++]);
    if (counter == 2) {
      break;
    }
  } while (counter < name.length);
  print("----------------------------");
// do evaluate condition after block of Do is executed
  counter = 0;
  do {
    final names = name[counter++];

    if (names == "Baz") {
      continue;
    }
    print(names);
  } while (counter < name.length);
}
