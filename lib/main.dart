import 'dart:async';
import 'package:flutter/material.dart';
import 'package:meatmate/Onboarding%20Screens/onboarding_Screen_2.dart';
import 'package:meatmate/SignUp_and_SignIn_Screens/SignUp_and_SignIn_Screen.dart';
import 'package:meatmate/Splash_Screens/loading_screen.dart';
import 'package:meatmate/Splash_Screens/splash_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'Onboarding Screens/onboarding_screen_1.dart';
import 'loading_page.dart';

void main() {
  runApp(MeatmateApp());
}

class MeatmateApp extends StatelessWidget {
  const MeatmateApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget example1 = SplashScreenView(
      navigateRoute: LoadingPage(),
      duration: 5,
      // speed: 2/
      // imageSize: 130,
      imageSrc: "assets/images/Splash_Screen_logo.png",
      // text: "Splash Screen",
      // textType: TextType.ColorizeAnimationText,
      // textStyle: TextStyle(
      //   fontSize: 40.0,
      // ),
      // colors: [
      //   Colors.purple,
      //   Colors.blue,
      //   Colors.yellow,
      //   Colors.red,
      // ],
      backgroundColor: Colors.white,
    );

    return MaterialApp(debugShowCheckedModeBanner: false, home: example1);
  }
}
