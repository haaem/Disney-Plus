import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:disney_plus/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Container(
          height: height * 0.35,
          child: OverflowBox(
            minHeight: height * 0.35,
            maxHeight: height * 0.35,
            child: Lottie.asset(
              'asset/lottie/disneychanged.json',
            ),
          ),
        ),
        nextScreen: HomePage(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
        backgroundColor: Colors.black,
      ),
    );
  }
}
