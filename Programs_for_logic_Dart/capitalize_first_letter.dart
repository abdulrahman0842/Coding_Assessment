void main() {
  print(capitalizeFirstLetter("this is a sentence"));
}

String capitalizeFirstLetter(String sentence) {
  List<String> test = sentence.split(' ');
  for (int i = 0; i < test.length; i++) {
    List<String> str = test[i].split('');
    str[0] = str[0].toUpperCase();
    test[i] = str.join();
  }

  return test.join(' ');
}
