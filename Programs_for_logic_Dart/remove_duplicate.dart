void main() {
  removeDuplicate('successfully');
}

void removeDuplicate(String test) {
  String result = test.split('').toSet().join();

  print(result);
}
