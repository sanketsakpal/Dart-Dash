import 'dart:collection';

void main(List<String> args) {
  // Unmodifiable Map Views

  final info = {
    "name": "sd",
    "age": 10,
  };

  // if we want to use  Unmodifiable map then use dart collection (UnmodifiableListView)
  try {
    final info1 = UnmodifiableMapView(info);
    info1.addAll({"test": ""});
  } catch (e) {
    print(e);
  }
}
