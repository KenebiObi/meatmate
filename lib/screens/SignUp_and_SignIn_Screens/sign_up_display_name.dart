import 'package:flutter/material.dart';
import 'package:meatmate/screens/SignUp_and_SignIn_Screens/SignUp_and_SignIn_Screen.dart';
import 'package:meatmate/screens/SignUp_and_SignIn_Screens/sign_up_phone_number_password.dart';

class SignUpDisplayNameScreen extends StatefulWidget {
  const SignUpDisplayNameScreen({super.key});

  @override
  State<SignUpDisplayNameScreen> createState() => _SignUpDisplayNameScreen();
}

class _SignUpDisplayNameScreen extends State<SignUpDisplayNameScreen> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  bool showPassword = false;
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    // Height of the device
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
                        "How would you like your name to be displayed?",
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  cursorColor: const Color.fromRGBO(252, 104, 68, 1),
                  style: const TextStyle(
                    fontFamily: 'Lexend',
                  ),
                  decoration: InputDecoration(
                    labelText: "Enter Name",
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
              // SizedBox(height: deviceHeight / 1.85),
              SizedBox(height: deviceHeight < 900 ? 430 : deviceHeight / 1.85),
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
                      builder: (context) => const SignUpPhoneNumberPassword(),
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
              SizedBox(height: deviceHeight < 900 ? 30 : deviceHeight - 892),
            ],
          ),
        ),
      ),
    );
  }
}




              // // Image
              // Image.asset('assets/images/SIgn_Up&SIgn_In_Screen_pic.png'),
              // const SizedBox(height: 23.0),
              // //Email text areax
              // Container(
              //   width: 380.0,
              //   child: TextField(
              //     keyboardType: TextInputType.emailAddress,
              //     cursorColor: const Color.fromARGB(255, 219, 33, 179),
              //     controller: emailTextController,
              //     decoration: InputDecoration(
              //       prefixIcon: Icon(
              //         Icons.mail_outline_rounded,
              //         color: Colors.grey[600],
              //       ),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(24.0),
              //       ),
              //       enabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(24.0),
              //         borderSide: const BorderSide(
              //           color: Color.fromARGB(255, 219, 33, 179),
              //         ),
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(24.0),
              //         borderSide: const BorderSide(
              //           color: Color.fromARGB(255, 219, 33, 179),
              //         ),
              //       ),
              //       hintText: "Email / Phone Number",
              //       hintStyle: const TextStyle(
              //         color: Color.fromRGBO(236, 236, 236, 1),
              //       ),
              //     ),
              //   ),
              // ),

              // const SizedBox(height: 15.0),
              // //Password text area
              // Container(
              //   width: 380.0,
              //   child: TextFormField(
              //     cursorColor: const Color.fromARGB(255, 219, 33, 179),
              //     controller: passwordTextController,
              //     decoration: InputDecoration(
              //       suffixIcon: Icon(
              //         showPassword
              //             ? CupertinoIcons.eye_fill
              //             : CupertinoIcons.eye_slash_fill,
              //         color: Colors.grey[600],
              //       ),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(24.0),
              //         borderSide: const BorderSide(
              //           color: Color.fromARGB(255, 219, 33, 179),
              //         ),
              //       ),
              //       enabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(24.0),
              //         borderSide: const BorderSide(
              //           color: Color.fromARGB(255, 219, 33, 179),
              //         ),
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(24.0),
              //         borderSide: const BorderSide(
              //           color: Color.fromARGB(255, 219, 33, 179),
              //         ),
              //       ),
              //       hintText: "Password",
              //       hintStyle: const TextStyle(
              //         color: Color.fromRGBO(236, 236, 236, 1),
              //       ),
              //       prefixIcon: Icon(
              //         Icons.lock_outline,
              //         color: Colors.grey[600],
              //       ),
              //     ),
              //     onTap: () {
              //       setState(() {
              //         showPassword = true;
              //       });
              //     },
              //   ),
              // ),
              // // Remember me
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 11.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Checkbox(
              //         value: rememberMe,
              //         side: const BorderSide(
              //           color: Color.fromRGBO(187, 43, 186, 1),
              //         ),
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(7.0),
              //         ),
              //         activeColor: const Color.fromARGB(255, 219, 33, 179),
              //         checkColor: Colors.white,
              //         onChanged: (bool? remebered) {
              //           setState(() {
              //             rememberMe = remebered!;
              //           });
              //         },
              //       ),
              //       const Text(
              //         "Remember Me",
              //         style: TextStyle(
              //           fontFamily: 'Lexend',
              //           fontSize: 16.0,
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 24.0,
              // ),
              // // Sign In button
              // GestureDetector(
              //   child: Container(
              //     width: 150.0,
              //     height: 65.0,
              //     decoration: const BoxDecoration(
              //       borderRadius: BorderRadius.horizontal(
              //         left: Radius.circular(32.0),
              //         right: Radius.circular(32.0),
              //       ),
              //       gradient: LinearGradient(
              //         colors: [
              //           Color.fromRGBO(187, 43, 186, 1),
              //           Color.fromRGBO(252, 21, 114, 1),
              //         ],
              //         begin: Alignment.topCenter,
              //         end: Alignment.bottomCenter,
              //       ),
              //     ),
              //     child: const Center(
              //       child: Text(
              //         "Sign In",
              //         style: TextStyle(
              //           color: Color(0XFFFDFDFD),
              //           fontWeight: FontWeight.w500,
              //           fontSize: 20.0,
              //           fontFamily: 'Lexend',
              //         ),
              //       ),
              //     ),
              //   ),
              // ),