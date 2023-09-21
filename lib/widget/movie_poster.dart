import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  const MoviePoster({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 150,
        child: Image.asset(imagePath, fit: BoxFit.fitHeight,),
      ),
    );
  }
}
