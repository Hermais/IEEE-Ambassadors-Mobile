void main() {
  List<String> words = ['madam', 'hello', 'world', 'level', 'radar'];

  print( words.where((word) => isPalindrome(word: word)).toList());

}

bool isPalindrome({required String word}) {
  return word == word.split('').reversed.join();
}
