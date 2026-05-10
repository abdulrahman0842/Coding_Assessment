void main() {
  List l1 = [1, 2, 3, 4];
  List l2 = [4, 5, 6, 8, 9];
  print(findMissingNumber(l1));
}

int? findMissingNumber(List num) {
  for (int i = num[0]; i <= num.length + num[0]; i++) {
    if (num[i] != i + 1) {
      return i + 1;
    }
  }
  return null;
}
