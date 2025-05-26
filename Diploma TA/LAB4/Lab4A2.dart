// W.A.P. to divide horizontal space of the screen into 3 different equal parts
// with different colors. (A)

import 'package:flutter/material.dart';

class Lab4a2 extends StatelessWidget {
  const Lab4a2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Container(color: Colors.red)),
          Expanded(child: Container(color: Colors.green)),
          Expanded(child: Container(color: Colors.blue)),
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
      home: Lab4a2(),
    );
  }
}





// import 'package:flutter/material.dart';
//
// class Lab6a1 extends StatelessWidget {
//   const Lab6a1({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           Expanded(child: Column(
//             children: [
//               Expanded(child: Container(color: Colors.red,)),
//               Expanded(child: Container(color: Colors.brown,)),
//               Expanded(child: Container(color: Colors.black,))
//             ],
//           )),
//           Expanded(child: Column(
//             children: [
//               Expanded(child: Container(color: Colors.green,)),
//               Expanded(child: Container(color: Colors.grey,)),
//               Expanded(child: Container(color: Colors.purple,))
//             ],
//           )),
//           Expanded(child: Column(
//             children: [
//               Expanded(child: Container(color: Colors.blueAccent,)),
//               Expanded(child: Container(color: Colors.pink,)),
//               Expanded(child: Container(color: Colors.orange,))
//             ],
//           )),
//         ],
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: Lab6a1(),
//     );
//   }
// }
//
//
