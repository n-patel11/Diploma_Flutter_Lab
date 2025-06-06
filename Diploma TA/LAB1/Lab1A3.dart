// Body Mass Index (BMI) is measure of health on weight. It can be calculated
// by taking your weight in kilograms and dividing by square of your height in
// meters. Write a program that prompts the user to enter weight in pounds
// and height in inches and display the BMI. Note: 1 pound=.45359237 Kg
// and 1 inch=0.254 meters. (A)

import 'dart:io';

void main(){
  print("enter your weight in pounds");
  double weight = double.parse(stdin.readLineSync()!);
  print("enter your height in inches");
  double height = double.parse(stdin.readLineSync()!);
  weight= weight*0.45359237;
  height=height*0.254;
  double BMI = weight / (height * height);
  print("Your BMI is: ${BMI.toStringAsFixed(2)}");

}
