void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  list = transform(list, (operation) => operation * operation);
  list.removeAt(2);
  list.sort();
}

List<int> transform(List<int> list, void Function(int) operation) {
  return list.map(operation).toList().cast();
}
