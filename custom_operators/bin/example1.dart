// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> arguments) {
//  Family Member Operators
  final dad = FamilyMember(name: 'Dad');
  final mom = FamilyMember(name: 'Mom');

  final family = dad + mom;
  print(family);
}

class FamilyMember {
  final String name;
  const FamilyMember({
    required this.name,
  });

  @override
  String toString() => 'FamilyMembers(name: $name)';
}

class Family {
  final List<FamilyMember> members;
  const Family({
    required this.members,
  });
  @override
  String toString() => 'Family (members = $members)';
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => Family(
        members: [this, other],
      );
}
