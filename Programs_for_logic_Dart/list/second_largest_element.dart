void main() {
  List num = [4, 3, 56, 82, 16, 45];
  print("Second Largest ${secondLargestElement(num)}");
}

int secondLargestElement(List num) {
  int largest = 0;
  int second_largest = 0;
  for (int i = 0; i < num.length; i++) {
    if (num[i] > largest) {
      second_largest = largest;
      largest = num[i];
    } else if (num[i] > second_largest) {
      second_largest = num[i];
    }
  }

  return second_largest;
}
