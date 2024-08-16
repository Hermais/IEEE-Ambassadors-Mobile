void main() {
  Map<String, int> map = {'apples': 2, 'bananas': 5, 'oranges': 3};

  map.addAll({'grapes': 4});
  map.remove('bananas');
  print(map);
}
