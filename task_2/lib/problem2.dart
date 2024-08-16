void main() {
  final list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final list2 = [5, 6, 7, 8, 9, 10, 11, 12, 13, 14];

  print(returnCommons(list1, list2));
}

List<T> returnCommons<T>(List<T> list1, List<T> list2) {
  List<T> commons = [];
  for (T element in list1) {
    if (list2.contains(element)) {
      commons.add(element);
    }
  }
  return commons;
}
