// W.A.P. to navigate from one page to another page using material page
// route. (A)

import 'package:flutter/material.dart';
import 'package:untitled/Diploma%20TA/LAB16/Page2.dart';

class Lab16a1 extends StatelessWidget {
  const Lab16a1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naviget one page to another page"),),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Page2()));
        }, child: Text("Move to anther page")),
      ),
    );
  }
}


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer Example',
      home: Lab16a1(),
    );
  }
}