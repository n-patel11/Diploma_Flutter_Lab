// W.A.P. to use the NavigationDrawer & display different pages on different
// menu clicks. (B)

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Drawer Example',
      home: Lab15b2(),
    );
  }
}

class Lab15b2 extends StatelessWidget {
  const Lab15b2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Drawer Example")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Menu", style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              title: Text("First Page"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => Firstpage()));
              },
            ),
            ListTile(
              title: Text("Second Page"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => Secondpage()));
              },
            ),
            ListTile(
              title: Text("Third Page"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => Thirdpage()));
              },
            ),
            ListTile(
              title: Text("Forth Page"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => Forthpage()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Select a page from the drawer.', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

// Pages
class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page")),
      body: Center(child: Text('This is the First Page!', style: TextStyle(fontSize: 24))),
    );
  }
}

class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(child: Text('This is the Second Page!', style: TextStyle(fontSize: 24))),
    );
  }
}

class Thirdpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Third Page")),
      body: Center(child: Text('This is the Third Page!', style: TextStyle(fontSize: 24))),
    );
  }
}

class Forthpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forth Page")),
      body: Center(child: Text('This is the Forth Page!', style: TextStyle(fontSize: 24))),
    );
  }
}
