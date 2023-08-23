// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // Custom Throws Annotation

  try {
    print('Dog aged 11 is going to run...');
    Dog(age: 11, isTired: false).run();
  } catch (e) {
    print(e);
  }
}
// this is custom annotation 
class Throws<T> {
  final List<T> exceptions;
  const Throws(this.exceptions);
}

class DogIsToOldException implements Exception {
  const DogIsToOldException();
}

class DogIsTiredException implements Exception {
  const DogIsTiredException();
}

class Animal {
  final int age;
  const Animal({
    required this.age,
  });
  @Throws([UnimplementedError])
  void run() => throw UnimplementedError();
}

class Dog extends Animal {
  final bool isTired;

  const Dog({required super.age, required this.isTired});
  @Throws([DogIsToOldException, DogIsTiredException])
  //  This function throws the following exceptions:
//  (DogIsToOldException] if the dog is older than 10 years old.
//  (DogIsTiredException] if the dog is tired.
  @override
  void run() {
    if (age > 10) {
      throw const DogIsToOldException();
    } else if (isTired) {
      throw const DogIsToOldException();
    } else {
      print("dog is running");
    }
  }
}
