import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              width: deviceWidth,
              'assets/images/Loading Sceen.png',
              fit: BoxFit.cover,
            ),
            // Image.asset('assets/images/meet-mate-logo-icon-white 1.png'),
          ],
        ),
      ),
    );
  }
}
// W.I.M.G OUT NOW