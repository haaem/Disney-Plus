import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'asset/img/hangang_poster.jpeg',
  'asset/img/moving_poster.jpeg',
  'asset/img/elemental_poster.jpeg',
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 7,
              ),
              Center(
                child: Image.asset(
                  'asset/img/disney_logo.png',
                  width: width * 0.2,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              _HomeCarouselSlider(width, height)
            ],
          ),
        ),
      ),
    );
  }

  Widget _HomeCarouselSlider(double width, double height) {
    return CarouselSlider(
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          enlargeCenterPage: true,
          enlargeFactor: 0.18
        ),
        items: imgList.map((e) {
          return Builder(builder: (BuildContext context) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Image.asset(
              e,
              fit: BoxFit.fitWidth,
              width: width * 0.9,
            ),
            );
          });
        }).toList());
  }
}
