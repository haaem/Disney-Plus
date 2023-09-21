import 'package:flutter/material.dart';

class DownLoadedMovie extends StatelessWidget {
  const DownLoadedMovie({Key? key, required this.imagePath, required this.movieDetail, required this.movieName}) : super(key: key);
  final String imagePath;
  final String movieName;
  final String movieDetail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagePath, fit: BoxFit.cover, width: 100, height: 50,),
        SizedBox(width: 8,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(movieName, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.white),),
            SizedBox(height: 5,),
            Text(movieDetail, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11, color: Colors.white),)
          ],
        )
      ],
    );
  }
}
