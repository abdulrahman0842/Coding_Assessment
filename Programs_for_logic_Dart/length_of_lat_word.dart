void main() {
  print(lengthOfLastWord('This is a sentence'));
}

int lengthOfLastWord(String sentence) {
  List<String> test = sentence.split(' ');
  return test.last.length;
}
