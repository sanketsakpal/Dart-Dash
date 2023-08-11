void main(List<String> args) {
  // Switch Statement
  describe(1);
  describe({"sd": "s"});
  describe(0.8);
}

void describe<T>(T value) {
  switch (T) {
    case int:
      print("this is integer");
      break;
    case double:
      print("this is double");
      break;
    case bool:
      print("this is bool");
      break;
    case const (Map<String, String>):
      print("this is map");
      break;
    default:
      print("this is default value");
      break;
  }
}
