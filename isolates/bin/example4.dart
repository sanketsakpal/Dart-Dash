import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

void main(List<String> args) async {
  // JSON Downloading and Parsing with Isolates

  final rp = ReceivePort();
  Isolate.spawn(
    _parseJson,
    rp.sendPort,
  );
  final todos = rp
      .takeWhile((element) => element is Iterable<Todo>)
      .cast<Iterable<Todo>>()
      .take(1);
  await for (final todo in todos) {
    print(todo);
  }
}

void _parseJson(SendPort sp) async {
  final client = HttpClient();
  final uri = Uri.parse('https://jsonplaceholder.typicode.com/todos/');
  final todo = await client
      .getUrl(uri)
      .then((value) => value.close())
      .then((res) => res.transform(utf8.decoder).join())
      .then((value) => jsonDecode(value) as List<dynamic>)
      .then((json) => json.map((map) => Todo.fromJson(map)));
  sp.send(todo);
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool isCompleted;

  @override
  String toString() =>
      'Todo (userId: $userId, id: $id, title: $title, isCompleted: $isCompleted)';

  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.isCompleted,
  });

  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        isCompleted = json['completed'];
}
