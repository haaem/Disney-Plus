import 'package:disney_plus/widget/distributor_button.dart';
import 'package:disney_plus/widget/movie_content.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:disney_plus/movie_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
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
              _HomeCarouselSlider(width, height),
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _Distributor(width),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width*0.045),
                child: Column(
                  children: [
                    MovieContent(width: width, movieList: recentMovieList, category: '디즈니+ 최신작'),
                    MovieContent(width: width, movieList: recommentdList, category: '취향 저격 콘텐츠')
                  ],
                ),
              )
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
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                e,
                fit: BoxFit.fitWidth,
                width: width * 0.9,
              ),
            );
          });
        }).toList());
  }

  // 배급사 버튼
  Widget _Distributor(double width) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DistributorButton(imagePath: 'asset/img/disney_white_logo.png',
              size: width * 1.05,),
            DistributorButton(
              imagePath: 'asset/img/pixar_logo.png', size: width * 1.3,),
            DistributorButton(
              imagePath: 'asset/img/marvel_logo.png', size: width,)
          ],
        ),
        SizedBox(height: 7,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DistributorButton(
              imagePath: 'asset/img/starwars_logo.png', size: width,),
            DistributorButton(
              imagePath: 'asset/img/ng_logo.png', size: width*1.5,),
            DistributorButton(
              imagePath: 'asset/img/star_logo.png', size: width,)
          ],
        ),
      ],
    );
  }
}