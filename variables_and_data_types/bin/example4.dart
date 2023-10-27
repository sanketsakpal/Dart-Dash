void main(List<String> args) {
  // assigning variables  to other variables

  String name = "test";

  // if you assign a data type to any variable then it contact between you and compiler ,
  // that you gave him the same data type
  //for example  : - if you gave data type as String then value must be in double or in single cots "" or '' that is String
  // if you gave String data type and you assign int to that variable then you get error at compile time
  // String name = 123; //" a value int can't be assigned to a variable type String " you get this error at compile time.

  var address = '';

  // if you are using var keyword to assign value then you are not bound with compiler that data type is same
  // you gave any data it can be int ,String or any other data type also.
  // you did not promise any thing to compiler
  // if you hover on address compiler make variable data type as String automatically because we set value as String if we change it to  int then data type of var address is change to int
  // you can change string to int and hover on address.

  address = name;

  // invalid operations

  // address = 20;

  // invalid operations

  // const age = 20;
  // address = age;

  print(address);
}
