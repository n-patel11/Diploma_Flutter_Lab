// W.A.P. to divide the vertical space of the screen into 3 different equal parts
// with different colors. (A)

import 'package:flutter/material.dart';

class Lab4a3 extends StatelessWidget {
  const Lab4a3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.deepPurple[200],)),
          Expanded(child: Container(color: Colors.pink[100],)),
          Expanded(child: Container(color: Colors.blue[100],)),
        ],
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
      home: Lab4a3(),
    );
  }
}