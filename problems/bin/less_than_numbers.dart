void main(List<String> args) {
  List<num> numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<num> lessThan5 = [];
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] < 5) {
      lessThan5.add(numbers[i]);
    }
  }

  print(lessThan5);
}
