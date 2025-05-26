// W.A.P. to display “hello world” using Text widget. Change color & size of
// text using different properties. (A) 

import 'package:flutter/material.dart';

class Lab5a1 extends StatelessWidget {
  const Lab5a1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hello World",style: TextStyle(color: Colors.red,fontSize: 35,fontWeight: FontWeight.bold,),),
      backgroundColor: Colors.teal,
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
      home: Lab5a1(),
    );
  }
}
