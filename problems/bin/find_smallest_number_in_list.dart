void main(List<String> args) {
  List<int> lst = [6, 5, 9, 8, 1];
  int smallest = lst[0];

  for (int i = 1; i < lst.length; i++) {
    if (lst[i] < smallest) {
      smallest = lst[i];
    }
  }

  print('The smallest number is: $smallest');
}
