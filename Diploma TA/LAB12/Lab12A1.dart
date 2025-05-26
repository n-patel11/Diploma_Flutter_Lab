// W.A.P. Design Contact List UI use ListView to display a list of contact with
// CircleAvatar, Text, and Trailling Icon. (A)

import 'package:flutter/material.dart';

class Lab12a1 extends StatelessWidget {
  Lab12a1({super.key});

  final List<String> contacts = [
    "Alice Johnson",
    "Bob Smith",
    "Charlie Davis",
    "Diana Prince",
    "Edward Norton",
    "Fiona Gallagher",
    "George Michael",
    "Helen Carter",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact List",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(contacts[index]),
            trailing: IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Calling ${contacts[index]}.....")),
                );
              },
              icon: Icon(Icons.call),
            ),
          );
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Lab12a1(),
    );
  }
}

