// W.A.P. to sort values in List. Ex. Input : [13, 2, -11, 142, -389, 0] Result: [
// 389, -11, 0, 2, 13, 142] (B)

import 'dart:io';

void main(){
  print("how many number add in list ?");
  int size = int.parse(stdin.readLineSync()!);
  List<int> l1 =[];
  print("Enter the elements of the list:");
  for(int i =0;i<size;i++){
    l1.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < l1.length - 1; i++) {
    for (int j = 0; j < l1.length - i - 1; j++) {
      if (l1[j] > l1[j + 1]) {
        int temp = l1[j];
        l1[j] = l1[j + 1];
        l1[j + 1] = temp;
      }
    }
  }

  //l1.sort();
  print("sorted list : $l1");

}
