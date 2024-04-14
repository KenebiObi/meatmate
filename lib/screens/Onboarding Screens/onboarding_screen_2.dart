import 'package:flutter/material.dart';
import 'package:meatmate/Screens/SignUp_and_SignIn_Screens/SignUp_and_SignIn_Screen.dart';
import 'package:meatmate/screens/SignUp_and_SignIn_Screens/sign_up_display_name.dart';
import '../../widgets/onboarding_screen_widget.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingScreenObject(
      image: "Onboarding_Screen_2.png",
      title: 'Meat your soulmate Find your partner',
      subTitle: "Connect  |  Chat  |  Have Fun",
      login: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignUpSignInInterface(),
          ),
        );
      },
      getStarted: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignUpDisplayNameScreen(),
          ),
        );
      },
    );
  }
}
