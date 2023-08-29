import 'dart:async';

Future<void> main(List<String> args) async {
  // Stream Transformers

  await for (final value in names.map((event) => event.toUpperCase())) {
    print(value);
  }
  print("_---------------------------------");
  await for (final capitalizedName in names.Capitalized) {
    print(capitalizedName);
  }
  print("_---------------------------------");
  await for (final capitalizedName in names.capitalizedUsingMap) {
    print(capitalizedName);
  }
}

Stream<String> names = Stream.fromIterable(['seth', 'kathy', 'Lars']);

extension on Stream<String> {
  Stream<String> get Capitalized => transform(ToUpperCase());

  Stream<String> get capitalizedUsingMap => map((name) => name.toUpperCase());
}

class ToUpperCase extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map((event) => event.toUpperCase());
  }
}
