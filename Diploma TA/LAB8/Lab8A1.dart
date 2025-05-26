// W.A.P. to Design simple calculator UI using Column, TextField,
// ElevatedButton, and Row. (A)

import 'package:flutter/material.dart';


class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {

  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();

  String result = '';

  void calculate(String op) {
    double n1 = double.tryParse(num1.text) ?? 0;
    double n2 = double.tryParse(num2.text) ?? 0;
    double res = 0;

    if (op == '+') res = n1 + n2;
    else if (op == '-') res = n1 - n2;
    else if (op == '*') res = n1 * n2;
    else if (op == '/') res = n2 != 0 ? n1 / n2 : 0;

    setState(() {
      result = res.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Easy Calculator")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: num1,
              decoration: InputDecoration(labelText: "Number 1"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: num2,
              decoration: InputDecoration(labelText: "Number 2"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: ['+', '-', '*', '/'].map((op) {
                return ElevatedButton(
                  onPressed: () => calculate(op),
                  child: Text(op),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text("Result: $result", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: SimpleCalculator(),
    debugShowCheckedModeBanner: false,
  ));
}