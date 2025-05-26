// 1. W.A.P. to create list of numbers and display using Listview. (A)


import 'package:flutter/material.dart';

class Lab11a2 extends StatelessWidget {
  Lab11a2({super.key});
  List<int> number = [1,2,3,4,5,67,8,9,10,11,12,13,14,15,16,17,18,19,20];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Number list")),
      ),
      body: ListView.builder(
        itemCount: number.length,
        itemBuilder: (context,index){
          return Card(child: ListTile(title: Text(number[index].toString()),),);
        },
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Lab11a2(),
    );
  }
}