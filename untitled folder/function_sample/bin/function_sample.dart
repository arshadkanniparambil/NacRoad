void main() {
  sum();
  sumParams(45, 76);
  print(sumReturn(4, 9));
  print(sumReq(firstNumber: 100, secondNumber: 350));
  print(sumFunction(38, 6, sumReturn));
  sumFuture(3, 4);
  print('Future Check');
}

void sum() {
  print(1 + 2);
}

void sumParams(int a, int b) {
  print('${a + b}');
}

int sumReturn(int a, int b) {
  return a + b;
}

int sumReq({required int firstNumber, required int secondNumber}) {
  return firstNumber + secondNumber;
}

int sumFunction(int a, int b, int Function(int, int) customSum) {
  return customSum(a, b);
}

Future<void> sumFuture(int a, int b) async {
  await Future.delayed(Duration(seconds: 3));
  print('Future sum is ${a + b}');
}
