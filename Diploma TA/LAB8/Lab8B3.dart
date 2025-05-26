// W.A.P. to Design Simple Survey Form using Column, TextField,
// RadioListTile, CheckBox, and ElevatedButton.(B)

import 'package:flutter/material.dart';

class Lab8b3 extends StatefulWidget {
  const Lab8b3({super.key});

  @override
  State<Lab8b3> createState() => _Lab8b3State();
}

class _Lab8b3State extends State<Lab8b3> {

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String? gender;
  bool cricate = false;
  bool hookie = false;
  bool basketbol = false;
  GlobalKey _formkey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Survey Form",style: TextStyle(fontSize: 40,color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body:Form(child:Column(
        key: _formkey,
        children: [
          TextFormField(
            controller: name,
            decoration: InputDecoration(
              hintText: "enter a name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            validator: (value){
              if(value== null || value.isEmpty){
                return "enter a name";
              }
              return null;
            },
          ),

          SizedBox(height: 20),

          TextFormField(
            controller: email,
            decoration: InputDecoration(
                hintText: "enter a email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            validator: (value){
              if(value== null || value.isEmpty){
                return "enter a email";
              }
              return null;
            },
          ),


          SizedBox(height: 20),
          Row(
            children: [
              Text("  gender :"),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Radio(
                value: "female",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),
              Text("Female"),
            ],
          ),
          Row(
            children: [
              Radio(
                value: "male",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),
              Text("Male"),
            ],
          ),
          SizedBox(height: 15),
          Column(
            children: [
              Row(
                children: [
                  Text("  Hobbis :"),
                ],
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Checkbox(value: cricate, onChanged: (value){
                    setState(() {
                      cricate = value?? false;
                    });
                  }),
                  Text("cricate")
                ],
              ),
              Row(
                children: [
                  Checkbox(value: basketbol, onChanged: (value){
                    setState(() {
                      basketbol = value ?? false;
                    });
                  }),
                  Text("basketbol")
                ],
              ),
              Row(
                children: [
                  Checkbox(value: hookie, onChanged: (value){
                    setState(() {
                      hookie = value ?? false;
                    });
                  }),
                  Text("hookie")
                ],
              )
            ],
          ),
          TextFormField(
            controller: password,
            decoration: InputDecoration(
              hintText: "enter a password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            validator: (value){
              if(value== null || value.isEmpty){
                return "enter a password";
              }
              return null;
            },
          ),
          
          ElevatedButton(onPressed: (){
            setState(() {
              print("name : ${name.text}");
              print("email : ${email.text}");
              print("Password: ${password.text}");
              print("gender : ${gender.toString()}");
            });
          }, child: Text("submit"))
        ],
      )),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: Lab8b3(),
    debugShowCheckedModeBanner: false,
  ));
}