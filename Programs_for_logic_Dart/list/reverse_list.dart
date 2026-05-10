void main() {
  List items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(reverseList(items));
}

List reverseList(List items) {
  List reversedList = [];
  for (int i = items.length - 1; i >= 0; i--) {
    reversedList.add(items[i]);
  }
  return reversedList;
}
