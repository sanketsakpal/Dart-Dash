import 'example5.dart';

void main(List<String> args) {
  // Setters in Classes

  final car = Car();

  try {
    car.drive(speed: -20);
  } catch (e) {
    print(e);
  }
}

class Car {
  int _speed = 0;

  int get speed => _speed;

  set speed(int newSpeed) {
    if (newSpeed < 0) {
      throw Exception("speed can not be negative");
    } else {
      _speed = newSpeed;
    }
  }

  void drive({required speed}) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print("stopping .....");
    print("stop stop");
  }
}
