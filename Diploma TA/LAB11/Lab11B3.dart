// 3. W.A.P. to create list of images path in List and display it using Gridview
// and then Gridview.builder. (B) 

import 'package:flutter/material.dart';

class Lab11b3 extends StatelessWidget {
   Lab11b3({super.key});
  List<String> imgurl =["https://static.wixstatic.com/media/6642a4_fe9bff1cef914db49d5da0af8f13594c~mv2.webp/v1/fill/w_1000,h_563,al_c,q_85,usm_0.66_1.00_0.01/6642a4_fe9bff1cef914db49d5da0af8f13594c~mv2.webp", // Abstract Gradient
   // "https://www.tirthyatraindia.com/assets/images/spiritual-tours/somnath-temple.jpg", // Cityscape - Skyline at night
   "https://upload.wikimedia.org/wikipedia/commons/5/56/Kedarnath_Temple_in_Rainy_season.jpg", // Minimalist - Clean gradient
   "https://www.pilgrimagetour.in/blog/wp-content/uploads/2023/09/How-to-Reach-Shree-Mahakaleshwar-Temple.jpg", // Space - Galaxy
   "https://media-cdn.tripadvisor.com/media/photo-s/12/20/40/43/srisailam-lord-mallikarjuna.jpg", // Ocean - Waves
   "https://media-cdn.tripadvisor.com/media/photo-s/12/20/40/43/srisailam-lord-mallikarjuna.jpg", // Forest - Nature
   "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/The_Courtyard_of_Chennakesava_Temple_-_Belur.jpg/800px-The_Courtyard_of_Chennakesava_Temple_-_Belur.jpg", // Urban - Street
   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHd5ZhKMRxQDj9MxBErzN4HFYaVG_4Ht_VGQ&s", // Texture - Wooden
   "https://upload.wikimedia.org/wikipedia/commons/a/ad/Grishneshwar_temple_in_Aurangabad_district.jpg"  ];// Sunset - Serene beach];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gridview"),),
      body: GridView.builder(
          itemCount: imgurl.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(child: Image.network(height: 90,imgurl[index] , fit: BoxFit.cover,));
        },
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Lab11b3(),
    );
  }
}