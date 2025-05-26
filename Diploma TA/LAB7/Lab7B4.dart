// W.A.P. to display an Image from a WEB URL using a cached network
// Image. (B)
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Lab7b4 extends StatelessWidget {
  final String imageUrl =
      "https://upload.wikimedia.org/wikipedia/commons/5/56/Kedarnath_Temple_in_Rainy_season.jpg"; // Minimalist - Clean gradient


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cached Network Image Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cached Image Example'),
        ),
        body: Center(
          child: CachedNetworkImage(
            imageUrl: imageUrl,
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
      home: Lab7b4(),
    );
  }
}



// class Lab7b4 extends StatefulWidget {
//   const Lab7b4({super.key});
//
//   @override
//   State<Lab7b4> createState() => _Lab7b4State();
// }
//
// class _Lab7b4State extends State<Lab7b4> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Image.network("assets/img.png")
//         ],
//       ),
//     );
//   }
// }


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
//       home: Lab7b4(),
//     );
//   }
// }


