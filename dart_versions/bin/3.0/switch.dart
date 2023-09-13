void main(List<String> args) {
  int page = 0;

  int lastPage = 1;

  final text = switch (lastPage) {
    0 => 'click Here',
    1 when page == lastPage => 'Click ME',
    _ => 'None'
  };
  print(text);
}
