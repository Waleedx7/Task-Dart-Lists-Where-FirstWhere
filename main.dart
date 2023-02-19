void main() {
  // Write your code here
  print("First odd number is $oddNumber");
  const numbers = [5, 3, 15, 4, 1];
  int largestNumber = 0;
  numbers.forEach((number) => print('$number'));
  numbers.forEach((number) =>
      largestNumber = number > largestNumber ? number : largestNumber);
  print('The Largest number is : $largestNumber');

  const List<int> ages = [12, 18, 24, 30, 36, 42];
  int minAge = 18;
  List<int> filterVisitors(List<int> ages, int minAge) {
    List<int> allowedAges = ages.where((age) => age > minAge).toList();
    return allowedAges;
  }

  List<int> allowedAges = filterVisitors(ages, minAge);
  print("Allowed ages: $allowedAges");
}

List<int> digts = [2, 4, 6, 8, 10];
int oddNumber = findOdds(digts);
int findOdds(List<int> digts) {
  int oddNumber = digts.firstWhere((digt) => digt % 2 == 1, orElse: () => 0);
  return oddNumber;
}
