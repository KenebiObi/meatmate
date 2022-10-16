import 'package:flutter/material.dart';
import 'Splash_Screens/splash_screen.dart';
import 'Splash_Screens/loading_screen.dart';
import 'Onboarding Screens/onboarding_screen_1.dart';
import 'dart:async';

class LoadingPage extends StatefulWidget {
  LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  var firstTimer;
  var secondTimer;

  @override
  void initState() {
    // TODO: implement
    // firstTimer = Timer(Duration(seconds: 5), () {
    //   setState(() {});
    // });

    secondTimer = Timer(Duration(seconds: 7), () {
      setState(() {});
    });
    super.initState();
  }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     home: firstTimer.isActive
  //         ? SplashScreen()
  //         : secondTimer.isActive
  //             ? LoadingScreen()
  //             : OnboardingScreen1(),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: secondTimer.isActive ? LoadingScreen() : OnboardingScreen1(),
    );
  }
}
