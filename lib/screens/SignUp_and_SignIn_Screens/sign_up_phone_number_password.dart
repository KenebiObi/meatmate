import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meatmate/screens/SignUp_and_SignIn_Screens/verification_screen.dart';

import '../../Screens/SignUp_and_SignIn_Screens/SignUp_and_SignIn_Screen.dart';

class SignUpPhoneNumberPassword extends StatefulWidget {
  const SignUpPhoneNumberPassword({super.key});

  @override
  State<SignUpPhoneNumberPassword> createState() =>
      _SignUpPhoneNumberPasswordState();
}

class _SignUpPhoneNumberPasswordState extends State<SignUpPhoneNumberPassword> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 68.0,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: Navigator.of(context).pop,
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      size: 32.0,
                      color: Color.fromRGBO(74, 73, 74, 1),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              // Sign Up text
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 8.0,
                      height: 24.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(4.0),
                          bottom: Radius.circular(4.0),
                        ),
                        color: Color.fromRGBO(252, 104, 68, 1),
                      ),
                    ),
                    const SizedBox(
                      width: 9.0,
                    ),
                    const Expanded(
                      child: Text(
                        "Sign Up",
                        softWrap: true,
                        maxLines: 2,
                        style: TextStyle(
                          color: Color.fromRGBO(74, 73, 74, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 11.0),
              // Phone number text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  cursorColor: const Color.fromRGBO(252, 104, 68, 1),
                  style: const TextStyle(
                    fontFamily: 'Lexend',
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      CupertinoIcons.device_phone_portrait,
                    ),
                    prefixIconColor: Colors.black,
                    labelText: "Phone Number",
                    labelStyle: const TextStyle(
                      color: Color.fromRGBO(172, 172, 172, 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(252, 104, 68, 1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(252, 104, 68, 1),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              // Email text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  cursorColor: const Color.fromRGBO(252, 104, 68, 1),
                  style: const TextStyle(
                    fontFamily: 'Lexend',
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      CupertinoIcons.device_phone_portrait,
                    ),
                    prefixIconColor: Colors.black,
                    labelText: "Email",
                    labelStyle: const TextStyle(
                      color: Color.fromRGBO(172, 172, 172, 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(252, 104, 68, 1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(252, 104, 68, 1),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              // Password text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  cursorColor: const Color.fromRGBO(252, 104, 68, 1),
                  style: const TextStyle(
                    fontFamily: 'Lexend',
                    color: Colors.black,
                  ),
                  // This is a logic for creating a password textfield with
                  // password show or hide ability
                  obscureText: passwordVisible,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock_outline_rounded,
                    ),
                    prefixIconColor: Colors.black,
                    suffixIcon: IconButton(
                      // color: passwordVisible
                      //     ? const Color.fromRGBO(252, 104, 68, 1)
                      //     : const Color.fromRGBO(172, 172, 172, 1),
                      onPressed: () {
                        setState(
                          () {
                            Color.fromRGBO(252, 104, 68, 1);
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                    labelText: "Password",
                    labelStyle: const TextStyle(
                      color: Color.fromRGBO(172, 172, 172, 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(252, 104, 68, 1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(252, 104, 68, 1),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: deviceHeight < 900 ? 300 : deviceHeight / 2.5),
              // SizedBox(height: deviceHeight / 2.5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 130.0,
                    vertical: 18.0,
                  ),
                  backgroundColor: const Color.fromRGBO(252, 104, 68, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerificationScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    color: Color.fromRGBO(249, 249, 249, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    fontFamily: 'Lexend',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Do you have an account?",
                    style: TextStyle(
                      color: Color.fromRGBO(172, 172, 172, 1),
                      fontFamily: "Lexend",
                      fontSize: 14.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpSignInInterface(),
                        ),
                      );
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color.fromRGBO(252, 104, 68, 1),
                        fontFamily: "Lexend",
                        fontSize: 14.0,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: deviceHeight < 900 ? 0 : deviceHeight - 892),
            ],
          ),
        ),
      ),
    );
  }
}
