void main() {
  print(
      countEntries(['red', 'blue', 'red', 'green', 'blue', 'blue', 'yellow']));
}

Map<String, int> countEntries(List<String> words) {
  Map<String, int> wordCount = {};
  for (String word in words) {
    if (wordCount.containsKey(word)) {
      wordCount[word] = wordCount[word]! + 1;
    } else {
      wordCount[word] = 1;
    }
  }
  return wordCount;
}
