void main(List<String> args) {
  // Converting Strings to Enumerations

  describe(animalType(fromStr: "cat"));
}

AnimalType? animalType({required String fromStr}) {
  try {
    return AnimalType.values.firstWhere((element) => element.name == fromStr);
  } catch (e) {
    print(e);
    return null;
  }
}

void describe(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.cat:
      print("this is cat");
      break;
    case AnimalType.dog:
      print("this is dog");
      break;
    case AnimalType.rabbit:
      print("this is rabbit");
      break;
    case AnimalType.monkey:
      print("this is monkey");
      break;
    default:
      print("this is animal");
  }
}

enum AnimalType {
  rabbit,
  cat,
  dog,
  monkey,
}
