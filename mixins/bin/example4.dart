void main(List<String> args) {
  // Limiting Mixins to Data Types

  // mining on another class

  Human().run();
}

class Has2Feet {
  const Has2Feet();
}

class Human extends Has2Feet with CanRun {}

mixin CanRun on Has2Feet {
  void run() => print('$runtimeType running');
}
