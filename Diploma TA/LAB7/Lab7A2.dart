// 2. W.A.P. to use Stack widget and show text upon an Image. (A)

import 'package:flutter/material.dart';

class Lab7a2 extends StatelessWidget {
  const Lab7a2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/img.png",fit: BoxFit.cover,),
          Positioned(
              top : 50,
              right: 100,
              child: Text("hello",style: TextStyle(fontSize: 40),))
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
      home: Lab7a2(),
    );
  }
}


