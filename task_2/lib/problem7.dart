void main() {
  print(manualListReverse([1, 2, 3, 4]));
}

List<T> manualListReverse<T>(List<T> list) {
  List<T> reversedList = [];
  for (int i = list.length - 1; i >= 0; i--) {
    reversedList.add(list[i]);
  }
  return reversedList;
}
