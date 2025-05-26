// W.A.P. to insert double into List and display in terminal and do sum of all
// numbers and print it with 2 decimal only. Ex: Total = 22.39998 => 22.40 (A)

import 'dart:io';

void main (){
  print("how many double data type number add in list ?");
  int size = int.parse(stdin.readLineSync()!);
  List<double> l1 =[];
  print("Enter the elements of the list:");
  for(int i =0;i<size;i++){
    l1.add(double.parse(stdin.readLineSync()!));
  }
  print(l1);

  double sum=0;
  for(int i =0;i<size;i++){
   sum=sum+l1[i];
  }
  print("Total = ${sum.toStringAsFixed(2)}");
}