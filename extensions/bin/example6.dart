void main(List<String> args) {
  //  Extending Enums
  print(AnimalType.cat.nameContainsUpperCaseLetters);
}

enum AnimalType {
  cat,
  dog,
  goldFish,
}

extension on Enum {
  bool get nameContainsUpperCaseLetters => name.contains(RegExp(r'[A-Z]'));
}
