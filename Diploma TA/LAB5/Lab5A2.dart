// W.A.P. to use TextField and print the input value into the terminal using the
// controller. (A)

import 'package:flutter/material.dart';

class Lab5a2 extends StatefulWidget {
  const Lab5a2({super.key});

  @override
  State<Lab5a2> createState() => _Lab5a2State();
}

class _Lab5a2State extends State<Lab5a2> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TextField Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Enter name",
                border: OutlineInputBorder(),
                labelText: "Name",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("Entered Name: ${nameController.text}");
              },
              child: Text("Print Name"),
            ),
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Lab5a2(),
    );
  }
}

