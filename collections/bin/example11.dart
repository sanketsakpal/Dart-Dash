import 'dart:math';

void main(List<String> args) {
  // Synchronous Generators

  for (var element in getName()) {
    print(element);
  }
}

Iterable<String> getName() sync* {
  print("producing bob");
  yield "bob";
  print("elsse jhon");
  yield "jhon";
  print("producing templateName");
  yield* templateName();
}

Iterable<String> templateName() sync* {
  print("producing test");
  yield "test";
  print("else joe");
  yield "joe";
}
