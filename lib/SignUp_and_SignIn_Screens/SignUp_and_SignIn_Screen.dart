import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meatmate/SignUp_and_SignIn_Screens/Sign_In_Screen.dart';

class SignUpSignInInterface extends StatelessWidget {
  const SignUpSignInInterface({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 120.0,
                ),
                // Container holding the coloured container and the welcome text
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: [
                      Container(
                        width: 8.0,
                        height: 24.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(4.0),
                            bottom: Radius.circular(4.0),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(187, 43, 186, 1),
                              Color.fromRGBO(252, 21, 114, 1),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 9.0,
                      ),
                      const Text(
                        "Welcome",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 11.0),
                // Image
                Image.asset('assets/images/SIgn_Up&SIgn_In_Screen_pic.png'),
                const SizedBox(height: 60.0),
                // The Sign In button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 380.0,
                    height: 52.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(32.0),
                        right: Radius.circular(32.0),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(187, 43, 186, 1),
                          Color.fromRGBO(252, 21, 114, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Color(0XFFFDFDFD),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          fontFamily: 'Lexend',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                // Sign Up Button
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 380.0,
                    height: 52.0,
                    padding: EdgeInsets.all(2.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(32.0),
                        right: Radius.circular(32.0),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(187, 43, 186, 1),
                          Color.fromRGBO(252, 21, 114, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Container(
                      width: 312.0,
                      height: 52.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(32.0),
                          right: Radius.circular(32.0),
                        ),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color.fromRGBO(187, 43, 186, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            fontFamily: 'Lexend',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                // Alternative login text
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.0,
                        color: const Color.fromRGBO(224, 224, 224, 1),
                        height: 1.0,
                      ),
                      const SizedBox(width: 20.0),
                      const Text(
                        "or continue with",
                        style: TextStyle(
                          color: Color.fromRGBO(111, 111, 111, 1),
                          fontFamily: "Lexend",
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Container(
                        width: 100.0,
                        color: const Color.fromRGBO(224, 224, 224, 1),
                        height: 1.0,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                // Facebook and google
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("Facebook");
                      },
                      child: const Image(
                        image: AssetImage("assets/images/Facebook.png"),
                      ),
                    ),
                    const SizedBox(width: 32.0),
                    GestureDetector(
                      onTap: () {
                        print("Google");
                      },
                      child: const Image(
                        image: AssetImage("assets/images/Google.png"),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
