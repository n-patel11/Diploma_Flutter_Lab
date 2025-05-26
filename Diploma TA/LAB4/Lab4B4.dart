// W.A.P. to divide the whole screen into 9 (equal size and different size) with
// different colors. (B)
import 'package:flutter/material.dart';

class Lab4b4 extends StatelessWidget {
  const Lab4b4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              Expanded(child: Container(color: Colors.blue,)),
              Expanded(child: Container(color: Colors.pink,)),
              Expanded(child: Container(color: Colors.grey,)),
            ],
          ),
          Column(
            children: [
              Expanded(child: Container(color: Colors.red,)),
              Expanded(child: Container(color: Colors.yellow,)),
              Expanded(child: Container(color: Colors.brown,)),
            ],
          ),
          Column(
            children: [
              Expanded(child: Container(color: Colors.black26,)),
              Expanded(child: Container(color: Colors.white,)),
              Expanded(child: Container(color: Colors.blueGrey,)),
            ],
          ),
          // Column(
          //   children: [
          //     Expanded(flex: 2, child: Container(color: Colors.red)),
          //     Expanded(flex: 1, child: Container(color: Colors.green)),
          //     Expanded(flex: 3, child: Container(color: Colors.blue)),
          //   ],
          // )
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
      home: Lab4b4(),
    );
  }
}

