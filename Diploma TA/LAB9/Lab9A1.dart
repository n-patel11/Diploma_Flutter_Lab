import 'package:flutter/material.dart';

class Lab9a1 extends StatefulWidget {
  const Lab9a1({super.key});

  @override
  State<Lab9a1> createState() => _Lab9a1State();
}

class _Lab9a1State extends State<Lab9a1> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  String? visit;
  bool yes = false;
  bool yessome = false;
  bool no = false;

  final _formKey = GlobalKey<FormState>(); // Corrected key type

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Survey Form",
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          color: Colors.blue.shade200,
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20, right: 22,bottom: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "enter a name",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
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
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "enter a email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("  Is this the first time you visited :"),
                            ],
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              Radio(
                                value: "Yes",
                                groupValue: visit,
                                onChanged: (value) {
                                  setState(() {
                                    visit = value!;
                                  });
                                },
                              ),
                              Text("Yes"),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                value: "No",
                                groupValue: visit,
                                onChanged: (value) {
                                  setState(() {
                                    visit = value!;
                                  });
                                },
                              ),
                              Text("No"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("  Hobbies :"),
                            ],
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              Checkbox(
                                  value: yes,
                                  onChanged: (value) {
                                    setState(() {
                                      yes = value ?? false;
                                    });
                                  }),
                              Text("Yes, all of it")
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: yessome,
                                  onChanged: (value) {
                                    setState(() {
                                      yessome = value ?? false;
                                    });
                                  }),
                              Text("Yes, some of it")
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: no,
                                  onChanged: (value) {
                                    setState(() {
                                      no = value ?? false;
                                    });
                                  }),
                              Text("No, none of it")
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Form submitted successfully!'),
                            backgroundColor: Colors.green,
                          ),
                        );

                        print("name : ${name.text}");
                        print("email : ${email.text}");
                        print("Visit : $visit");
                        print("Hobbies - All: $yes, Some: $yessome, None: $no");
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Please fill all required fields!'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    child: Text("Submit"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Lab9a1(),
    debugShowCheckedModeBanner: false,
  ));
}
