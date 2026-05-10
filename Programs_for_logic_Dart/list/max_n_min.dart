void main() {
  List<int> numbers = [19, 5, 98, 63, 14, 52, 98, 100];
  maxAndMin(numbers);
}

void maxAndMin(List<int> test) {
  int max = 0;
  int min = test[0];
  for (int num in test) {
    if (num > max) {
      max = num;
    }
    if (num < min) {
      min = num;
    }
  }
  print('Max: $max \nMin:$min');
}
