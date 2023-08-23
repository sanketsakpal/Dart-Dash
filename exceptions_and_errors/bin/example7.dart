void main(List<String> args) {
  // Capturing Stack Trace
  Dog(isTired: false).run();

  try {
    Dog(isTired: true).run();
  } catch (e, stack) {
    print(stack);
  }
}

class DogIsTiredException implements Exception {
  final String message;
  DogIsTiredException([this.message = 'Poor doggy is tired']);
}

class Dog {
  final bool isTired;
  const Dog({
    required this.isTired,
  });
  void run() {
    if (isTired) {
      throw DogIsTiredException('Poor doggo is tired');
    } else {
      print('Doggo is running');
    }
  }
}
