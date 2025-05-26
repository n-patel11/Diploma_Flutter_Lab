//2. W.A.P. to find percentage of 5 subject. (A)

import 'dart:io';

void main(){
  print("enter mark of five sub out of 50:");
  print("enter a mart of first sub :");
  int a1=int.parse(stdin.readLineSync()!);
  print("enter a mart of second  sub :");
  int a2=int.parse(stdin.readLineSync()!);
  print("enter a mart of third sub :");
  int a3=int.parse(stdin.readLineSync()!);
  print("enter a mart of fourth sub :");
  int a4=int.parse(stdin.readLineSync()!);
  print("enter a mart of fifth sub :");
  int a5=int.parse(stdin.readLineSync()!);
  int sum=a1+a2+a3+a4+a5;
  double percentage=(sum*100)/250;
  print("parcentage,$percentage");
}