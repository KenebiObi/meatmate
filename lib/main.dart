import 'package:flutter/material.dart';
import 'dart:async';
import 'package:meatmate/Screens/Splash_Screens/loading_screen.dart';
import 'package:meatmate/Screens/Splash_Screens/splash_screen.dart';
import 'package:meatmate/first_screen.dart';
import 'Screens/Onboarding Screens/onboarding_screen_1.dart';
// import 'package:splash_screen_view/SplashScreenView.dart';
// import 'loading_page.dart';
// import 'package:meatmate/Onboarding%20Screens/onboarding_Screen_2.dart';
// import 'package:meatmate/SignUp_and_SignIn_Screens/SignUp_and_SignIn_Screen.dart';

void main() {
  runApp(MeatmateApp());
}

// class MeatmateApp extends StatelessWidget {
//   const MeatmateApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//       splash: Image.asset("assets/images/Splash_Screen_logo.png"),
//       nextScreen: const MainScreen(),
//       duration: 2,
//       backgroundColor: Colors.white,
//        splashTransition: SplashTransition.fadeTransition,
//       pageTransitionType: PageTransitionType.scale,
//     );
//   }
// }

// class MainScreen extends StatelessWidget {
//   const MainScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const LoadingPage();
//   }
// }

class MeatmateApp extends StatefulWidget {
  const MeatmateApp({Key? key}) : super(key: key);

  @override
  State<MeatmateApp> createState() => _MeatmateAppState();
}

class _MeatmateAppState extends State<MeatmateApp> {
  var firstTimer;
  var secondTimer;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement
    firstTimer = Timer(const Duration(seconds: 5), () {
      setState(() {});
    });

    secondTimer = Timer(const Duration(seconds: 7), () {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Color.fromRGBO(252, 104, 68, 1),
        ),
        // colorScheme: ColorScheme.fromSeed(
        //   seedColor: const Color.fromRGBO(252, 104, 68, 1),
        // ),
      ),
      debugShowCheckedModeBanner: false,
      home: firstTimer.isActive
          ? const SplashScreen()
          : secondTimer.isActive
              ? const LoadingScreen()
              : First_Screen(),
    );
  }
}
