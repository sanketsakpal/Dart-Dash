void main(List<String> args) async {
  //  Stream.asyncMap and Fold
  final result = await getNames()
      .asyncMap((event) => extractCharacters(event))
      .fold('', (previous, element) {
    element.join(' ');
    return '$previous $element ';
  });
  print(result);
}

Stream<String> getNames() async* {
  yield "John";
  yield "Jane";
  yield "Jack";
}

Future<List<String>> extractCharacters(String from) async {
  final characters = <String>[];
  for (final character in from.split("")) {
    await Future.delayed(Duration(milliseconds: 100));
    characters.add(character);
  }
  return characters;
}
