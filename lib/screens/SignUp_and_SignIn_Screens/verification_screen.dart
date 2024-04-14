import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:meatmate/screens/SignUp_and_SignIn_Screens/select_gender_screen.dart";

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController otpController1 = TextEditingController();
  TextEditingController otpController2 = TextEditingController();
  TextEditingController otpController3 = TextEditingController();
  TextEditingController otpController4 = TextEditingController();

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
                        "Verification",
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
              SizedBox(height: deviceHeight < 900 ? 95 : deviceHeight - 892),
              // Verification number text field
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      width: 56.0,
                      height: 56.0,
                      child: TextFormField(
                        controller: otpController1,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                        textInputAction: TextInputAction.next,
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        cursorWidth: 1.5,
                        cursorColor: const Color.fromRGBO(252, 104, 68, 1),
                        decoration: InputDecoration(
                          counterText: "",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(252, 104, 68, 1),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(252, 104, 68, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      width: 56.0,
                      height: 56.0,
                      child: TextFormField(
                        controller: otpController2,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                        textInputAction: TextInputAction.next,
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        cursorWidth: 1.5,
                        cursorColor: const Color.fromRGBO(252, 104, 68, 1),
                        decoration: InputDecoration(
                          counterText: "",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(252, 104, 68, 1),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(252, 104, 68, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      width: 56.0,
                      height: 56.0,
                      child: TextFormField(
                        controller: otpController3,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                        textInputAction: TextInputAction.next,
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        cursorWidth: 1.5,
                        cursorColor: const Color.fromRGBO(252, 104, 68, 1),
                        decoration: InputDecoration(
                          counterText: "",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(252, 104, 68, 1),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(252, 104, 68, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      width: 56.0,
                      height: 56.0,
                      child: TextFormField(
                        controller: otpController4,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                        textInputAction: TextInputAction.next,
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        cursorWidth: 1.5,
                        cursorColor: const Color.fromRGBO(252, 104, 68, 1),
                        decoration: InputDecoration(
                          counterText: "",
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(252, 104, 68, 1),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(252, 104, 68, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: deviceHeight < 900 ? 32 : deviceHeight - 892),
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
                  if (otpController1.text.toString() +
                          otpController2.text.toString() +
                          otpController3.text.toString() +
                          otpController4.text.toString() !=
                      "1234") {
                    return;
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectGenderScreen(),
                      ),
                    );
                  }
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
              SizedBox(height: deviceHeight < 900 ? 36 : deviceHeight - 892),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "60 seconds",
                    style: TextStyle(
                      color: Color.fromRGBO(172, 172, 172, 1),
                      fontFamily: "Lexend",
                      fontSize: 14.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const SignUpSignInInterface(),
                      //   ),
                      // );
                    },
                    child: const Text(
                      "Resend OTP",
                      style: TextStyle(
                        color: Color.fromRGBO(252, 104, 68, 1),
                        fontFamily: "Lexend",
                        fontSize: 14.0,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
