void main() {
  void firstNonRepeatingElement(String test) {
    List<String> test_in_list = test.split('');
    Map<String, int> frequency_count = {};

    for (var e in test_in_list) {
      frequency_count[e] = (frequency_count[e] ?? 0) + 1;
    }

    for (var items in frequency_count.entries) {
      if (items.value == 1) {
        print(items);
        break;
      }
    }
  }

  firstNonRepeatingElement('maantm');
}
