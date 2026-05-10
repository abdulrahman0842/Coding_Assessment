void main() {
  print(removeDuplicate([1, 2, 3, 1, 3, 8, 5, 69, 5]));
}

List removeDuplicate(List items) {
  Set unique = {};
  items.forEach((e) => unique.add(e));
  return unique.toList();
  // return items.toSet().toList();
}
