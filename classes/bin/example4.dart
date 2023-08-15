// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  //  Getters in Classes
}

// in this example full name is calculated upon the constructing an instance of person class
// and since the last  name and first name is final properties they could never change
// they could not change internally

// class Person {
//   final String firstName;
//   final String lastName;
//   final String fullName;
// const  Person({
//     required this.firstName,
//     required this.lastName,
//   }) : fullName = "$firstName $lastName";
// }


//  now the differnce between this code and this is that full name  is calculated every time you call full name getter 
//  if the calculation for the property is heavy calculation then prefer first example 
class Person {
  final String firstName;
  final String lastName;
  String get fullName => "$firstName $lastName";
  Person({
    required this.firstName,
    required this.lastName,
  });
}
