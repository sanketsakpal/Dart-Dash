import 'dart:collection';

void main(List<String> args) {
  // - Extending ListBase to Create a Safer List
  // own list

  final myList = SafeList(
      absentValue: "not found", defaultValue: "", values: ["var" ,"car"]);
  print(myList[0]);
  print(myList[7]);
}

class SafeList<T> extends ListBase {
  final List<T> _list;
  final T absentValue;
  final T defaultValue;

  @override
  int get length => _list.length;

  @override
  set length(int newLength) {
    if (newLength <= _list.length) {
      _list.length = newLength;
    } else {
      _list.addAll(List.filled(newLength - _list.length, defaultValue));
    }
  }

  SafeList(
      {required this.absentValue, required this.defaultValue, List<T>? values})
      : _list = values ?? [];

  @override
  operator [](int index) => index < _list.length ? _list[index] : absentValue;

  @override
  void operator []=(int index, value) => _list[index] = value;

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}
