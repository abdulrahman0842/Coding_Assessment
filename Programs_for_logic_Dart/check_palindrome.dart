void main() {
  print(isPalindrome("hello"));
}

bool isPalindrome(String test) {
  String reveresed = test.split('').reversed.join();
  return test == reveresed ? true : false;
}
