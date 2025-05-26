// 1. W.A.P. to Add password visibility icon in the Text field. (A)

import 'package:flutter/material.dart';

class Lab6a1 extends StatefulWidget {
  const Lab6a1({super.key});

  @override
  State<Lab6a1> createState() => _Lab6a1State();
}

class _Lab6a1State extends State<Lab6a1> {
  final TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Password Visibility")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: password,
                obscureText: isVisible, 
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter a password",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isVisible ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a password";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("Password: ${password.text}");
                  }
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
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
      home: const Lab6a1(),
    );
  }
}
