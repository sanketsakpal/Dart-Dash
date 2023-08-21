void main(List<String> arguments) {
  final value = 20;
  final timesFour = value.timesFour;
  print(timesFour);
  print(40.timesFour);

  print("hello".reversed);
}

// example
extension on int {
  int get timesFour => this * 4;
}

// Extending String

extension on String {
  String get reversed => split('').reversed.join();
}
