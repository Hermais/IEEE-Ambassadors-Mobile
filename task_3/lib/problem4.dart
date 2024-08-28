

int squareSum(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i] * numbers[i];
  }
  return sum;
}
