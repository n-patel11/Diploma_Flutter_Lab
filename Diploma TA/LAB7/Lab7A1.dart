// W.A.P. to display an Image into the Image asset widget from the asset
// folder. (A)

import 'package:flutter/material.dart';

class Lab7a1 extends StatelessWidget {
  const Lab7a1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/img.png",fit:BoxFit.cover,),
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
      home: Lab7a1(),
    );
  }
}

