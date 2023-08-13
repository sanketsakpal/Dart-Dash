

void main(List<String> args) {
  // Extending Enumerations
  AnimalType.cat
    ..jump()
    ..run();

  AnimalType.dog
    ..jump()
    ..run();
}

enum AnimalType {
  cat,
  dog,
  rabbit;

  void run() {
    print("running...");
  }
}

extension Jump on AnimalType {
  void jump() {
    print("$this is jumping...!");
  }
}
