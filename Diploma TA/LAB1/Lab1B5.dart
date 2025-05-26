// W.A.P. to perform Addition, Subtraction, Multiplication, Division based on
// user choice using if, if..else..if, & switch. (B)

import 'dart:io';

void main() {
  print("Perform Addition, Subtraction, Multiplication, Division based on user choice using if-else and switch");

  print("Enter any two numbers:");
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);

  print("Enter an operation (+, -, *, /, %):");
  String op = stdin.readLineSync()!;

  // Using if-else-if
  print("\n--- Using if-else-if ---");
  if (op == '+') {
    print("Addition: ${num1 + num2}");
  } else if (op == '-') {
    print("Subtraction: ${num1 - num2}");
  } else if (op == '*') {
    print("Multiplication: ${num1 * num2}");
  } else if (op == '/') {
    if (num2 != 0) {
      print("Division: ${num1 / num2}");
    } else {
      print("Division by zero is not allowed.");
    }
  } else if (op == '%') {
    print("Modulus: ${num1 % num2}");
  } else {
    print("Invalid operation!");
  }

  // Using switch-case
  print("\n--- Using switch-case ---");
  switch (op) {
    case '+':
      print("Addition: ${num1 + num2}");
      break;
    case '-':
      print("Subtraction: ${num1 - num2}");
      break;
    case '*':
      print("Multiplication: ${num1 * num2}");
      break;
    case '/':
      if (num2 != 0) {
        print("Division: ${num1 / num2}");
      } else {
        print("Division by zero is not allowed.");
      }
      break;
    case '%':
      print("Modulus: ${num1 % num2}");
      break;
    default:
      print("Invalid operation!");
  }
}
