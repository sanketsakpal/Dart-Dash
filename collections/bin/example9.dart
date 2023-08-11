// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:collection';

void main(List<String> args) {
  // Encapsulation with Unmodifiable Collections

  final persons = Persons(name: 'foo', siblings: [Persons(name: "bar")]);
}

class Persons {
  final String name;
  final List<Persons>? _siblings;
// to hiding private data type
  UnmodifiableListView<Persons>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings!);

  const Persons({required this.name, List<Persons>? siblings})
      : _siblings = siblings;
}
