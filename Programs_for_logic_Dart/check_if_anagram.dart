void main() {
  print(isAnagaram("listen", "silant"));
}

bool isAnagaram(String test1, String test2) {
  if (test1.length != test2.length) {
    return false;
  }
  Map<String, int> str1_count = {};
  Map<String, int> str2_count = {};

  for (int i = 0; i < test1.length; i++) {
    str1_count[test1[i]] = (str1_count[test1[i]] ?? 0) + 1;
    str2_count[test2[i]] = (str2_count[test2[i]] ?? 0) + 1;
  }
  Set<String> unique = str1_count.keys.toSet();
  for (String item in unique) {
    if (str1_count[item] != str2_count[item]) {
      return false;
    }
  }

  return true;
}
