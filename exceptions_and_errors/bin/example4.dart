Future<void> main(List<String> args) async {
  // Finally
  final db = DataBase();
  try {
    // await db.open();
    await db.getData();
    await db.close();
  } on DatabaseNotOpenException {
    print('We forgot to open the database');
  } finally {
    // guarantee to be executed
    await db.close();
  }
}

class DataBase {
  bool _isDbOpen = false;

  Future<void> open() {
    return Future.delayed(Duration(seconds: 1), () {
      _isDbOpen = true;
      print("Database opened");
    });
  }

  Future<String> getData() {
    if (!_isDbOpen) {
      throw DatabaseNotOpenException();
    }
    return Future.delayed(
      Duration(seconds: 1),
      () => 'Data',
    );
  }

  Future<void> close() {
    return Future.delayed(Duration(seconds: 1), () {
      _isDbOpen = false;
      print('Database closed');
    });
  }
}

class DatabaseNotOpenException implements Exception {
  @override
  String toString() => 'DatabaseNot0penException';
}
