import 'dart:math';

void main() {
  List<dynamic> list = [1, 2, [3, 4, [5, 6, 7], 8], 9, 10, [[[[[[[[12]]]]], 7982]], 852525]];
  print(recursivelyFindLargestNumInNestedList(list).toInt());

}
double recursivelyFindLargestNumInNestedList(List<dynamic> list) {
  double maxNum = double.negativeInfinity;

  for (dynamic item in list) {
    if (item is List<dynamic>) {
      maxNum = max(maxNum, recursivelyFindLargestNumInNestedList(item).toDouble());
    } else {
      maxNum = max(maxNum, (item as int).toDouble());
    }
  }
  return maxNum;
}
