void main(List<String> args) {
  // Specializing Generic Type Definitions
  const JSON<String> json = {
    'name': 'John',
    'address': '123 Main St',
  };
  print(json);
}

typedef JSON<T> = Map<String, T>;
