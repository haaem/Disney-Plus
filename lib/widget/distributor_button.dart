import 'package:flutter/material.dart';

class DistributorButton extends StatelessWidget {
  const DistributorButton({Key? key, required this.imagePath, required this.size}) : super(key: key);
  final String imagePath;
  final double size;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width*0.285,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.white60, width: 1),
        gradient: LinearGradient(
            colors: [Color(0xff5a5478).withOpacity(0.8), Color(0xff5a5478)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ),
      child: Center(
        child: Image.asset(imagePath, width: size*0.15,),
      ),
    );
  }
}
