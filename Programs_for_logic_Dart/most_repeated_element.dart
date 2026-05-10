// Count the Most repeated element
void main() {
  String test = "maaaamtm";

  List<String> str = test.split('');
  Set<String> unique = test.split('').toSet();
  int mostCount = 0;
  String mostRepeated = "";

  unique.forEach((e) {
    var count = str.where((item) => item == e).toList().length;
    if (count > mostCount) {
      mostCount = count;
      mostRepeated = e;
    }
  });

  print(mostRepeated);
}
