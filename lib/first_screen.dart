import 'package:flutter/material.dart';
import 'package:meatmate/Screens/Onboarding%20Screens/onboarding_screen_2.dart';
import 'package:meatmate/Screens/Onboarding%20Screens/onboarding_screen_1.dart';

import 'Screens/Onboarding Screens/onboarding_screen_3.dart';

class First_Screen extends StatelessWidget {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        OnboardingScreen1(),
        OnboardingScreen2(),
        OnboardingScreen3(),
      ],
    );
  }
}
