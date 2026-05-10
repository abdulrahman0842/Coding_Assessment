void main() {
  reverseString("james");
}

void reverseString(String test) {
  List<String> string_list = test.split('');
  List<String> result = [];
  for (int i = string_list.length - 1; i >= 0; i--) {
    result.add(string_list[i]);
  }
  String final_output = result.join("");
  print(final_output);
}
