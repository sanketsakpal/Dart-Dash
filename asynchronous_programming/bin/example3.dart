Future<void> main(List<String> args) async {
  // Future Chaining
// future chaining means you have a future value that fade in another future value

  final length = await calculateLength(await getFullName());
  print(length);

  final length1 = await getFullName().then((value) => calculateLength(value));
  print(length1);
}

Future<String> getFullName() => Future.delayed(
      const Duration(seconds: 1),
      () => 'John Doe',
    );

Future<int> calculateLength(String value) => Future.delayed(
      const Duration(seconds: 1),
      () => value.length,
    );
