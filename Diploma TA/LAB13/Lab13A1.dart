import 'package:flutter/material.dart';

class Lab13a1 extends StatelessWidget {
  // Sample movie poster image URLs
  final List<String> moviePosters = [
    'https://i.pinimg.com/originals/fb/55/dc/fb55dc632b7a7ffbabf104b1208b27fc.jpg',
    'https://upload.wikimedia.org/wikipedia/en/f/f9/TheBatmanPoster2022.jpg',
    'https://upload.wikimedia.org/wikipedia/en/8/86/Inception_%282010%29_theatrical_poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/2/2e/Spider-Man_No_Way_Home_poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg',
    'https://upload.wikimedia.org/wikipedia/en/d/dc/Black_Panther_film_poster.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Posters'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: moviePosters.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // A = 2 (2 posters in a row)
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
                child: Image.network(
                  moviePosters[index],
                  fit: BoxFit.cover,
                ),
            );
          },
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
      home: Lab13a1(),
    );
  }
}

