import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/Loading_Screen_logo_1.png'),
              Image.asset('assets/images/Loading_Screen_pic_2.png'),
            ],
          ),
        ),
      ),
    );
  }
}
