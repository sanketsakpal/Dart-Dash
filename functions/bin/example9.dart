void main(List<String> args) {
  // Optionality of Required Named Parameters
  doSomething(age: 24);
  doSomething(age: null);
}

/// required parameter can not have default value
// required int?  age = 20 is invalid code
void doSomething({required int? age}) {
  if (age != null) {
    final in2Year = age + 2;
    print("In 2 year your age will be $in2Year years old.");
  } else {
    print(" you did't tell me your age");
  }
}
