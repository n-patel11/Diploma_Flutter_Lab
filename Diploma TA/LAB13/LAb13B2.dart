// W.A.P. Design Photo Gallery UI using GridView.builer, Card, Image and
// InkWell. (B)

import 'package:flutter/material.dart';

void main() {
  runApp(PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Lab13b2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Lab13b2 extends StatelessWidget {
  final List<String> imageUrls = List.generate(
    20,
        (index) => 'https://picsum.photos/seed/$index/200/300',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: imageUrls.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // You can show full image or navigate to detail page
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Tapped on image ${index + 1}')),
                );
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
