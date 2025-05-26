// W.A.P. to create a registration screen using different widgets (Text,
// TextFromField, SizedBox, Radio, CheckBox, List, Button etc…)(B)

import 'package:flutter/material.dart';

class Lab6b2 extends StatefulWidget {
  const Lab6b2({super.key});

  @override
  State<Lab6b2> createState() => _Lab6b2State();
}

class _Lab6b2State extends State<Lab6b2> {

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone= TextEditingController();
  TextEditingController adress = TextEditingController();
  String? gender;
  bool cricate = false;
  bool hookie = false;
  bool basketbol = false;
  GlobalKey _formkey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Student ragistation Form",style: TextStyle(fontSize: 30,color: Colors.white),)),
        backgroundColor: Colors.blue,
      ),
      body:Form(child:Column(
        key: _formkey,
        children: [

          SizedBox(height: 20),

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

          TextFormField(
            controller: phone,
            decoration: InputDecoration(
              hintText: "enter a phonenumber",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            validator: (value){
              if(value== null || value.isEmpty){
                return "enter a phonenumber";
              }
              return null;
            },
          ),


          SizedBox(height: 20),

          TextFormField(
            controller: adress,
            decoration: InputDecoration(
              hintText: "enter a Adress",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            validator: (value){
              if(value== null || value.isEmpty){
                return "enter a adress";
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

          SizedBox(height: 20),

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

          SizedBox(height: 20),

          ElevatedButton(onPressed: (){
            setState(() {
              print("name : ${name.text}");
              print("email : ${email.text}");
              print("Password: ${password.text}");
              print("gender : ${gender.toString()}");
              print("phonenumber: ${phone.text}");
              print("Adress: ${adress.text}");
            });
          }, child: Text("submit"))
        ],
      )),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: Lab6b2(),
    debugShowCheckedModeBanner: false,
  ));
}