void main(List<String> args) {
  //  Modern For Loops
  const name = ["foo", "Bar", "Baz", "jon"];

  for (var names in name) {
    print(names);
  }
  print("----------------------------");

  for (var names in name) {
    if (names.startsWith("B")) {
      continue;
    }
    print(names);
  }
  print("----------------------------");
  for (var names in name) {
    if (names.startsWith("Baz")) {
      break;
    }
    print(names);
  }

  print("----------------------------");

  for (var names in name) {
    if (names == "jon") {
      continue;
    }
    print(names);
  }

  print("----------------------------");

// i--

  for (var names in name.reversed) {
    print(names);
  }

  print("----------------------------");
  for (var names in Iterable.generate(5)) {
    print(names);
  }
}
