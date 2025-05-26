// W.A.P to Design Shopping Item Card using Card, Column, Image, Text, and
// ElevatedButton. (A)

import 'package:flutter/material.dart';

class Lab8a2 extends StatefulWidget {
  const Lab8a2({super.key});

  @override
  State<Lab8a2> createState() => _Lab8a2State();
}

class _Lab8a2State extends State<Lab8a2> {
  int totalitem =0; /// jyare kai pan sate state ma change thai avu banavu hoy to tane bulid ni bare anounce karva nu
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Shoppong item cart",style: TextStyle(fontSize: 40,color: Colors.white),)),
      backgroundColor: Colors.blue,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("add item in cart : $totalitem")
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              child: Row(
                children: [
                  Expanded(child:
                    Container(child: Image.asset("assets/img_4.png",fit: BoxFit.cover,)),
                   ),
                  Expanded(child:
                    Center(child: Column(
                      children: [
                        Text("iphone 13 pro max",style: TextStyle(color: Colors.deepPurple,fontSize: 27),),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(onPressed: (){
                          setState(() {
                            totalitem++;
                          });
                        }, child: Text("Add to cart")),
                      ],
                    ))
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Row(
                children: [
                  Expanded(child:
                  Container(child: Image.asset("assets/img_5.png",fit: BoxFit.cover,)),
                  ),
                  Expanded(child:
                  Center(child: Column(
                    children: [
                      Text("Headphones boat",style: TextStyle(color: Colors.deepPurple,fontSize: 27),),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          totalitem++;
                        });
                      }, child: Text("Add to cart")),
                    ],
                  ))
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Row(
                children: [
                  Expanded(child:
                  Container(child: Image.asset("assets/img_6.png",fit: BoxFit.cover,)),
                  ),
                  Expanded(child:
                  Center(child: Column(
                    children: [
                      Text("Ipad",style: TextStyle(color: Colors.deepPurple,fontSize: 27),),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          totalitem++;
                        });
                      }, child: Text("Add to cart")),
                    ],
                  ))
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Row(
                children: [
                  Expanded(child:
                  Container(child: Image.asset("assets/img_7.png",fit: BoxFit.cover,)),
                  ),
                  Expanded(child:
                  Center(child: Column(
                    children: [
                      Text("samsung galaxy s24 ultra",style: TextStyle(color: Colors.deepPurple,fontSize: 27),),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          totalitem++;
                        });
                      }, child: Text("Add to cart")),
                    ],
                  ))
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: Lab8a2(),
    debugShowCheckedModeBanner: false,
  ));
}