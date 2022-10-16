import 'dart:async';
import 'package:flutter/material.dart';
import 'package:meatmate/Onboarding%20Screens/onboarding_Screen_2.dart';
import 'package:meatmate/SignUp_and_SignIn_Screens/SignUp_and_SignIn_Screen.dart';
import 'package:meatmate/Splash_Screens/loading_screen.dart';
import 'package:meatmate/Splash_Screens/splash_screen.dart';
import 'Onboarding Screens/onboarding_screen_1.dart';

void main() {
  runApp(MeatmateApp());
}

class MeatmateApp extends StatefulWidget {
  MeatmateApp({super.key});

  @override
  State<MeatmateApp> createState() => _MeatmateAppState();
}

class _MeatmateAppState extends State<MeatmateApp> {
  var firstTimer;
  var secondTimer;

  @override
  void initState() {
    // TODO: implement
    firstTimer = Timer(Duration(seconds: 5), () {
      setState(() {});
    });

    secondTimer = Timer(Duration(seconds: 7), () {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstTimer.isActive ? SplashScreen() : secondTimer.isActive? LoadingScreen(): OnboardingScreen1(),
    );
  }
}
