// W.A.P. to do validation in the login screen. (Email Validation & Password
// Validation) on Button click. (B)

import 'package:flutter/material.dart';

class Lab5b3 extends StatefulWidget {
  const Lab5b3({super.key});

  @override
  State<Lab5b3> createState() => _Lab5b3State();
}

class _Lab5b3State extends State<Lab5b3> {

  @override
  Widget build(BuildContext context) {
    TextEditingController usename = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen", style: TextStyle(color: Colors.deepPurple.shade300,fontSize: 30),),
        backgroundColor:Colors.blue.shade200,
      ),
      body: Form(
          key: _formKey, // ✅ Attach key to form
          child:Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
           TextFormField(
             controller: usename,
             decoration: InputDecoration(
               hintText: "enter a user name",
               labelText: "user name",
               border: OutlineInputBorder(
                 borderSide: BorderSide(
                   color: Colors.green,
                   width: 70,
                 )
               )
             ),
             validator: (value){
               if(value==null || value.isEmpty){
                 return "enter a user name";
               }
               return null;
             },
           ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Enter an email",
                labelText: "User Email",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an email';
                } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value)) {
                  return 'Enter a valid email address';
                }
                return null;
              },
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: password,
              decoration: InputDecoration(
                  hintText: "enter a password",
                  labelText: "password",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 70,
                      )
                  )
              ),
              validator: (value){
                if(value==null || value.isEmpty){
                  return "enter a password";
                }
                return null;
              },
            ),

            SizedBox(
              height: 40,
            ),

            Center(child: ElevatedButton(onPressed: () {
              if (_formKey.currentState!.validate()) {
                print("Username: ${usename.text}");
                print("Email: ${email.text}");
                print("Password: ${password.text}");
              }
            },
                child: Text("submit")))
          ],
        ),
      )),
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
      home: Lab5b3(),
    );
  }
}
