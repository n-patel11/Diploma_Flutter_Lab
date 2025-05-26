import 'package:flutter/material.dart';

class Lab14a1 extends StatelessWidget {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PageView Example')),
      body: PageView(
        controller: _controller,
        pageSnapping: true,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.red,
            child: Center(child: Text('Page 1', style: TextStyle(fontSize: 30))),
          ),
          Container(
            color: Colors.green,
            child: Center(child: Text('Page 2', style: TextStyle(fontSize: 30))),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text('Page 3', style: TextStyle(fontSize: 30))),
          ),
        ],
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
      home:Lab14a1 (),
    );
  }
}
