void main() {
  countVowelsConsonents('This is a string');
}

void countVowelsConsonents(String test) {
  Set<String> vowels = {"a", "e", "i", "o", "u"};
  List<String> chars = test.split('').where((e) => e != " ").toList();
  int vowelCount = 0;
  for (var char in chars) {
    if (vowels.contains(char)) {
      vowelCount += 1;
    }
  }
  int consonentCount = chars.length - vowelCount;

  print('Vowel Count: ${vowelCount}\nConsonent Count:${consonentCount}');
}
