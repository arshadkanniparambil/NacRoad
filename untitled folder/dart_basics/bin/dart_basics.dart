import 'dart:io';

void main(List<String> arguments) {
  print('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print('Number is positive');
  } else {
    print('Number is Negative');
  }
}
