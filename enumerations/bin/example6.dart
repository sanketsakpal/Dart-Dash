void main(List<String> args) {
  // Enumerations with Mixins

  animalType.dog.jump();
  animalType.cat.jump();

  try {
    animalType.fish.jump();
  } catch (e) {
    print("fish cannot jump");
  }
}

mixin canJump {
  int get feetCount;

  void jump() {
    if (feetCount < 1) {
      throw Exception("cannot jump");
    } else {
      print("jumped!");
    }
  }
}

enum animalType with canJump {
  cat(feetCount: 4),
  dog(feetCount: 5),
  fish(feetCount: 0);

  @override
  final int feetCount;
  const animalType({
    required this.feetCount,
  });
}
