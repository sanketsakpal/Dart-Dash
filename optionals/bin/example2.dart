void main(List<String> args) {
  const someValue = null;
  print(someValue);
// int age1 = null ; // it gives us error , null is not subtype of int age
  int? age2 =
      null; // with use og ? this keyword dart knows that the value of variable age can be null and it can not give any error
  int? age3 = 20;
  age3 = null;
  print(age3);
// if assign the value to var age 3 it will gives us warring that the operand can not be null try  removing  condition
  if (age3 == null) {
    print("it's null ");
  } else {
    print("is's not null");
  }
  
  void something(int? age) {
    if (age == null) {
      print("it's null ");
    } else {
      print("is's not null");
    }
  }
  // in above condition dart does not know what is age trying to be say so its not gives any warning to us.
}
