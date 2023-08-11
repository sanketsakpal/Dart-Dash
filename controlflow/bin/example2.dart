void main(List<String> args) {
  // - Classic For Loops

  const name = ["foo", "bar", "baz", "jon"];

  for (var i = 0; i < name.length; i++) {
    print(name[i]);
  }
  print("----------------------------");
// 3 2 1 0
  for (var i = name.length - 1; i >= 0; i--) {
    print(name[i]);
  }
  // 0 1 2 3
  print("----------------------------");
  for (var i = 0; i < name.length; i += 2) {
    print(name[i]);
  }
}
