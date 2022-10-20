import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreen();
}

class _SignInScreen extends State<SignInScreen> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  bool showPassword = false;
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 120.0,
              ),
              // Welcome Back text
              Container(
                padding: const EdgeInsets.all(16.0),
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
                      "Welcome Back",
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
              const SizedBox(height: 23.0),
              //Email text areax
              Container(
                width: 380.0,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: const Color.fromARGB(255, 219, 33, 179),
                  controller: emailTextController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail_outline_rounded,
                      color: Colors.grey[600],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 219, 33, 179),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 219, 33, 179),
                      ),
                    ),
                    hintText: "Email / Phone Number",
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(236, 236, 236, 1),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15.0),
              //Password text area
              Container(
                width: 380.0,
                child: TextFormField(
                  cursorColor: const Color.fromARGB(255, 219, 33, 179),
                  controller: passwordTextController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      showPassword
                          ? CupertinoIcons.eye_fill
                          : CupertinoIcons.eye_slash_fill,
                      color: Colors.grey[600],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 219, 33, 179),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 219, 33, 179),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 219, 33, 179),
                      ),
                    ),
                    hintText: "Password",
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(236, 236, 236, 1),
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.grey[600],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      showPassword = true;
                    });
                  },
                ),
              ),
              // Remember me
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 11.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: rememberMe,
                      side: const BorderSide(
                        color: Color.fromRGBO(187, 43, 186, 1),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      activeColor: const Color.fromARGB(255, 219, 33, 179),
                      checkColor: Colors.white,
                      onChanged: (bool? remebered) {
                        setState(() {
                          rememberMe = remebered!;
                        });
                      },
                    ),
                    const Text(
                      "Remember Me",
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 16.0,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              // Sign In button
              GestureDetector(
                child: Container(
                  width: 150.0,
                  height: 65.0,
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
                        fontSize: 20.0,
                        fontFamily: 'Lexend',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
