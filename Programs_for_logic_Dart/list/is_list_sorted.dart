void main() {
  List num = [1, 2, 3, 4, 6, 5, 7, 8, 9];
  print(isSorted(num));
}

bool isSorted(List items) {
  for (int i = 0; i <= items.length - 2; i++) {
    if (!(items[i] <= items[i + 1])) {
      return false;
    }
  }
  return true;
}
