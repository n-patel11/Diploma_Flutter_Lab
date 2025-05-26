//  W.A.P. to insert int numbers into List and display in terminal. (A)


import 'dart:io';

void main(){
  print("how many number add in list ?");
  int size = int.parse(stdin.readLineSync()!);
  List<int> l1 =[];
  print("Enter the elements of the list:");
  for(int i =0;i<size;i++){
    l1.add(int.parse(stdin.readLineSync()!));
  }
  print(l1);
}
