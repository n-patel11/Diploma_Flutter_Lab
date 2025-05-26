// 1. W.A.P. Design PageView with 3D Page Transition Effect. (A)
import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page View Example"),),
      body: Center(child: Card(
        child: Column(
          children: [
            Text("Move to First page"),
            ElevatedButton(onPressed: (){

            }, child: Text("Move"))
          ],
        ),
      )),
    );
  }
}
