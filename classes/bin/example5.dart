void main(List<String> args) {
  // Methods
// car.drive()// this is not working because of drive method are belonging to class car

  Car().drive(speed: 40); // like this

  // or

  final car = Car();

  car.drive(speed: 50);
}

class Car {
  int speed = 0;

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
