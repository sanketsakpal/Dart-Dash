void main(List<String> args) {
  // Assigning Const and Final

  const thisList = [1, 2, 3];

  final thatList = thisList;
  print(thisList);
  print(thatList);

  // const someList = thatList; // getting error
}
