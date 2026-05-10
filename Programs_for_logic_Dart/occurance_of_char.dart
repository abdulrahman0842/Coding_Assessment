void main() {
  print(occuranceOfAChar('Successfully', 'l'));
}

int occuranceOfAChar(String test, String char) {
  List<String> str = test.toLowerCase().split('');
  int count = 0;
  for (String s in str) {
    if (s == char) {
      count++;
    }
  }
  return count;
}
