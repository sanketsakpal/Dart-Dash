Future<void> main(List<String> arguments) async {
// Future
  print(await getUserName());
  print(await getAddress());
  print(await getPhoneNumber());
  print(await getCity());
  print(await getCountry());
  print(await getZipCode());
}

Future<String> getUserName() async {
  // don some async work

  return "Test";
}

Future<String> getAddress() => Future.value('123 Main St');

Future<String> getPhoneNumber() =>
    Future<String>.delayed(const Duration(seconds: 1), () => '555-555-5555');

Future<String> getCity() async {
  await Future.delayed(Duration(seconds: 1));
  return "mumbai";
}

Future<String> getCountry() async => "india";

// async keyword doesn't really contribute with anything here

Future<String> getZipCode() async => Future.delayed(
      const Duration(seconds: 1),
      () => '12345',
    );
