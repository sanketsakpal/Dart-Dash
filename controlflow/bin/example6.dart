void main(List<String> args) {
  // For Loop over Map
  const info = {
    'name': 'jn',
    'age': 30,
    'height': 8,
    'isMarried': false,
    'address': {
      'street': 'main Street',
      'city': 'new york',
      'country': 'india',
    },
  };

  for (var element in info.entries) {
    print("${element.key} : ${element.value}");
  }
}
