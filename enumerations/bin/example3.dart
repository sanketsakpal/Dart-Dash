void main(List<String> args) {
  // Switch Enumerations
  final whiskers = AnimalType.cat;

  switch (whiskers) {
    case AnimalType.cat:
      print("this is cat");
      break;
    case AnimalType.dog:
      print("this is cat");

      break;
    case AnimalType.rabbit:
      print("this is cat");

      break;
    default:
      print("this is not cat");
  }
}

enum AnimalType {
  rabbit,
  cat,
  dog,
  monkey,
}
