void main(List<String> args) {
  // Specifying Data Types

  const String yourName = "testing ";
  // final  hisName = yourName; // here we get warning from lint rule
  final String hisName = yourName;
  // in this example for first variable yourName we are assign data type but for second variable we does not assign
  // so if we go to analysis_option.yml file and change lints rule and  says always_specify_type then lint rule give warning that you are
  // forgot to specify type
  // it will help you to code consistent
  print(yourName);
  print(hisName);
}
