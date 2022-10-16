import 'package:flutter/material.dart';
import '../SignUp_and_SignIn_Screens/SignUp_and_SignIn_Screen.dart';
import 'onboarding_Screen_2.dart';
import 'onboarding_screen_object.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingScreenObject(
      image: "Onboarding_Screen_1_pic.png",
      title: 'Meet your soulmate Find your partner',
      colorOne: const Color.fromRGBO(187, 43, 186, 1),
      colorTwo: const Color.fromRGBO(252, 21, 114, 1),
      colorThree: const Color.fromRGBO(255, 217, 255, 1),
      colorFour: const Color.fromRGBO(253, 229, 238, 1),
      colorFive: const Color.fromRGBO(236, 236, 236, 1),
      colorSix: const Color.fromRGBO(236, 236, 236, 1),
      skip: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignUpSignInInterface(),
          ),
        );
      },
      next: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingScreen2(),
          ),
        );
      },
    );
  }
}
