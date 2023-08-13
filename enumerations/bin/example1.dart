// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> arguments) {
  // allows you to create similar objects in one structure

  final woof = Animal(name: "woof", type: AnimalType.dog);

  if (woof.type == AnimalType.dog) {
    print("woof is dog ");
  } else {
    print("woof is cat");
  }

  switch (woof.type) {
    case AnimalType.rabbit:
      print("woof is rabbit ");
      break;

    case AnimalType.dog:
      print("woof is dog ");
      break;

    case AnimalType.cat:
      print("woof is cat");
      break;
    default:
      print("woof is animal");
  }
}

enum AnimalType {
  rabbit,
  cat,
  dog,
  monkey,
}

class Animal {
  final String name;
  final AnimalType type;
  Animal({
    required this.name,
    required this.type,
  });
}
