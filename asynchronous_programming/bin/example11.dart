Future<void> main(List<String> args) async {
  // Stream.toList
  final allNames = await getNames().toList();

  // to list is wait for completing stream

  // for example if streams need 20 sec to perform certain task then to list call after 20s
  print(allNames);
}

Stream<String> getNames() async* {
  yield "John";
  yield "Jane";
  yield "Jack";
}
