void main(List<String> args) async {
  //  Future Error Handling

  try {
    print(await getFullName(firstName: "ss", lastName: "sd"));
    print(await getFullName(firstName: '', lastName: "sd"));
  } on FirstOrLastNameMissingException {
    print("First or Last name is missing ");
  }
}

Future<String> getFullName({
  required String firstName,
  required String lastName,
}) {
  if (firstName.isEmpty || lastName.isEmpty) {
    throw FirstOrLastNameMissingException();
  } else {
    return Future.value('$firstName $lastName');
  }
}

class FirstOrLastNameMissingException implements Exception {
  const FirstOrLastNameMissingException();
}
