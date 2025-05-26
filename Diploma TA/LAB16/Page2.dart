import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page number 2"),),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text("Move to anther page")),
          ),
          Text("Welcome to page number 2 !!")
        ],
      ),
    );
  }
}
