// W.A.P. to check whether the given number is positive or negative. (A)

import 'dart:io';

void main() {
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  if (num == 0) {
    print("The number is zero.");
  } else if (num > 0) {
    print("The number is positive: $num");
  } else {
    print("The number is negative: $num");
  }
}
