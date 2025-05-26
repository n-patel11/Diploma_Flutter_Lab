// W.A.P. to insert Strings into List and display in terminal.


import 'dart:io';

void main(){
  print("how many string add in list ?");
  int size = int.parse(stdin.readLineSync()!);
  List<String> l1 =[];
  print("Enter the elements of the list:");
  for(int i =0;i<size;i++){
    l1.add((stdin.readLineSync()!));
  }
  print(l1);
}

