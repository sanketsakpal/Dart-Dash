void main(List<String> args) {
  //  Late Variables
//late variable are initialized only when they are used
  late final myValue = 10;
  print(myValue);

  late final yourValue = getValue();
  print('your here');
  print(yourValue);
}
// expectations :

// get valued called

//your here

//10

int getValue() {
  print("get valued called");
  return 10;
}
