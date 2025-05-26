//W.A.P. to count number of even or odd number from an array of n
//numbers. (A)

import 'dart:io';

void main() {
  print("Enter the size of the array:");
  int size = int.parse(stdin.readLineSync()!);

  int evenCount = 0;
  int oddCount = 0;

  print("Enter $size numbers:");
  for (int i = 0; i < size; i++) {
    int num = int.parse(stdin.readLineSync()!);
    if (num % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  print("Even numbers count: $evenCount");
  print("Odd numbers count: $oddCount");
}



// void main() {
//   print("Enter the size of the list:");
//   int size = int.parse(stdin.readLineSync()!);
//   List<int> l1 = [];
//
//   print("Enter the elements of the list:");
//   for (int i = 0; i < size; i++) {
//     l1.add(int.parse(stdin.readLineSync()!));
//   }
//
//   List<int> l2 = oddOrEvenNumber(l1);
//   print("Even number count: ${l2[0]}");
//   print("Odd number count: ${l2[1]}");
// }
//
// List<int> oddOrEvenNumber(List<int> l1) {
//   int countOdd = 0;
//   int countEven = 0;
//
//   for (int num in l1) {
//     if (num % 2 == 0) {
//       countEven++;
//     }
//     else {
//       countOdd++;
//     }
//   }
//
//   return [countEven, countOdd];
// }
