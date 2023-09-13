void main(List<String> args) {
  final list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  final [a, b, c, ...d] = list;
  print('$a $b $c $d');
  print(jsoned['userId']);
  final {'userId': userId, 'title': title} = jsoned;
  print(
    userId,
  );
  print(title);

  switch (jsoned) {
    case {'userId': int userId, 'title': String title, 'body': String body}:
      print(userId);
      print(title);
      print(b);
    default:
      print('Incorrect JSON');
  }

  // pattern matching

  final human = Human('Nice Name', 2);
  final Human(:name, :age) = human;
  print(name);

// records and pattern matching
  var (a1, b1) = ('yes', 'no');
  print((a1, b1));
  (a1, b1) = (b1, a1); // Swap.
  print((a, b));
}

final jsoned = {
  "userId": 1,
  "id": 1,
  "title": "sunt aut facere repellat provident occ",
  "body": "quia et suscipit\ nsuscipit recusandae"
};

class Human {
  final String name;
  final int age;
  Human(
    this.name,
    this.age,
  );
}
