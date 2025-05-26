// W.A.P. Design E-commerce UI use ListView.builder to display a list of
// items with CircleAvatar, Text, and ElevatedButton. (B)

import 'package:flutter/material.dart';

class Lab12b2 extends StatelessWidget {
   Lab12b2({super.key});
  List<Map<String, dynamic>> products = [
    {"name": "Headphones", "price": 59.99},
    {"name": "Smart Watch", "price": 129.49},
    {"name": "Wireless Mouse", "price": 25.75},
    {"name": "Bluetooth Speaker", "price": 45.00},
    {"name": "Laptop Stand", "price": 35.00},
    {"name": "Keyboard", "price": 49.90},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("E-commerce Store",style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.blue,),
      body: ListView.builder(
        itemCount:products.length,
          itemBuilder: (context,index){
           return ListTile(
             leading: CircleAvatar(
               child: Icon(Icons.shopping_bag),
             ),
             title: Text(products[index]['name']),
             trailing: ElevatedButton(onPressed: (){
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("add to cart ${products[index]}")));
             }
                 , child: Text("add to cart")) ,
           );
          }),
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
      home: Lab12b2(),
    );
  }
}

