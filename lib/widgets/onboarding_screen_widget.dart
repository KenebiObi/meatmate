// import 'package:flutter/material.dart';

// class OnboardingScreenObject extends StatefulWidget {
//   final String image;
//   final String title;
//   final Color colorOne;
//   final Color colorTwo;
//   final Color colorThree;
//   final Color colorFour;
//   final Color colorFive;
//   final Color colorSix;
//   final void Function()? skip;
//   final void Function()? next;
//   const OnboardingScreenObject({Key? key,
//     required this.image,
//     required this.title,
//     required this.colorOne,
//     required this.colorTwo,
//     required this.colorThree,
//     required this.colorFour,
//     required this.colorFive,
//     required this.colorSix,
//     required this.skip,
//     required this.next,
//   }) : super(key: key);
//   @override
//   State<OnboardingScreenObject> createState() => _OnboardingScreenObjectState();
// }

// class _OnboardingScreenObjectState extends State<OnboardingScreenObject> {
//   @override
//   Widget build(BuildContext context) {
//     // Width of the device
//     final deviceWidth = MediaQuery.of(context).size.width;
//     // Height of the device
//     final deviceHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Center(
//             child: SizedBox(
//               width: deviceWidth / 1.152,
//               child: Column(
//                 children: [
//                   const SizedBox(height: 67.0),
//                   // Onboarding Screen Image
//                   SizedBox(
//                     width: deviceWidth / 1.152,
//                     height: 312.0,
//                     child: Image.asset(
//                       'assets/images/${widget.image}',
//                     ),
//                   ),
//                   const SizedBox(height: 22.0),
//                   // Onboarding Screen Title
//                   SizedBox(
//                     width: 193.0,
//                     height: 50.0,
//                     child: Text(
//                       textAlign: TextAlign.center,
//                       widget.title,
//                       style: const TextStyle(
//                         fontWeight: FontWeight.w400,
//                         fontSize: 20.0,
//                         fontFamily: 'Lexend',
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 11.0),
//                   // Onboarding Screen Subtitle
//                   SizedBox(
//                     width: 204,
//                     height: 20.0,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         const Text(
//                           "Connect",
//                           style: TextStyle(
//                             color: Color.fromRGBO(111, 111, 111, 1),
//                             fontWeight: FontWeight.w400,
//                             fontSize: 16.0,
//                             fontFamily: 'Lexend',
//                           ),
//                         ),
//                         Container(
//                           height: 17.0,
//                           width: 1.5,
//                           color: Colors.grey,
//                         ),
//                         const Text(
//                           "Chat",
//                           style: TextStyle(
//                             color: Color.fromRGBO(111, 111, 111, 1),
//                             fontWeight: FontWeight.w400,
//                             fontSize: 16.0,
//                             fontFamily: 'Lexend',
//                           ),
//                         ),
//                         Container(
//                           height: 17.0,
//                           width: 1.5,
//                           color: Colors.grey,
//                         ),
//                         const Text(
//                           "Have Fun",
//                           style: TextStyle(
//                             color: Color.fromRGBO(111, 111, 111, 1),
//                             fontWeight: FontWeight.w400,
//                             fontSize: 16.0,
//                             fontFamily: 'Lexend',
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 12.0),
//                   // Page Dot Indicators
//                   SizedBox(
//                     width: 70.0,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [
//                                 widget.colorOne,
//                                 widget.colorTwo,
//                               ],
//                               begin: Alignment.topCenter,
//                               end: Alignment.bottomCenter,
//                             ),
//                             borderRadius: BorderRadius.circular(50.0),
//                           ),
//                           width: 8.0,
//                           height: 8.0,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [
//                                 widget.colorThree,
//                                 widget.colorFour,
//                               ],
//                               begin: Alignment.topCenter,
//                               end: Alignment.bottomCenter,
//                             ),
//                             borderRadius: BorderRadius.circular(50.0),
//                           ),
//                           width: 8.0,
//                           height: 8.0,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [
//                                 widget.colorFive,
//                                 widget.colorSix,
//                               ],
//                               begin: Alignment.topCenter,
//                               end: Alignment.bottomCenter,
//                             ),
//                             borderRadius: BorderRadius.circular(50.0),
//                           ),
//                           width: 8.0,
//                           height: 8.0,
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: deviceHeight / 3.13,
//                   ),
//                   // Onboarding Screen Buttons
//                   Container(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         TextButton(
//                           onPressed: widget.skip,
//                           child: const Text(
//                             "Skip",
//                             style: TextStyle(
//                               fontFamily: 'Lexend',
//                               color: Color.fromRGBO(111, 111, 111, 1),
//                               fontWeight: FontWeight.w400,
//                               fontSize: 16.0,
//                             ),
//                           ),
//                         ),
//                         TextButton(
//                           onPressed: widget.next,
//                           child: const Text(
//                             "Next",
//                             style: TextStyle(
//                               fontFamily: 'Lexend',
//                               color: Color.fromRGBO(111, 111, 111, 1),
//                               fontWeight: FontWeight.w400,
//                               fontSize: 16.0,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class OnboardingScreenObject extends StatefulWidget {
  final String image;
  final String title;
  final String subTitle;
  final void Function()? getStarted;
  final void Function()? login;
  const OnboardingScreenObject({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.getStarted,
    required this.login,
  }) : super(key: key);
  @override
  State<OnboardingScreenObject> createState() => _OnboardingScreenObjectState();
}

class _OnboardingScreenObjectState extends State<OnboardingScreenObject> {
  @override
  Widget build(BuildContext context) {
    // Width of the device
    final deviceWidth = MediaQuery.of(context).size.width;
    // Height of the device
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image(
              width: deviceWidth,
              height: deviceHeight,
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/${widget.image}",
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(252, 104, 68, 0.43),
                    Color.fromRGBO(255, 247, 246, 0.1),
                    Color.fromRGBO(255, 254, 254, 0.13),
                    Color.fromRGBO(69, 14, 0, 0.85),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 70.0),
                Row(
                  children: [
                    const Spacer(),
                    TextButton(
                      onPressed: widget.login,
                      child: const Text(
                        // deviceHeight.toString(),
                        "Login",
                        style: TextStyle(
                          color: Colors.black,
                          //  Color.fromRGBO(87, 3, 1, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                          fontFamily: 'Lexend',
                        ),
                      ),
                    ),
                    const SizedBox(width: 50.0),
                  ],
                ),
                SizedBox(height: deviceHeight - 368),
                SizedBox(
                  width: 305.0,
                  child: Text(
                    textAlign: TextAlign.center,
                    widget.title,
                    softWrap: true,
                    style: const TextStyle(
                      color: Color.fromRGBO(249, 249, 249, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 29.0,
                      fontFamily: 'Lexend',
                    ),
                  ),
                ),
                SizedBox(height: deviceHeight < 900 ? 30 : deviceHeight - 892),
                Text(
                  textAlign: TextAlign.center,
                  widget.subTitle,
                  style: const TextStyle(
                    color: Color.fromRGBO(249, 249, 249, 1),
                    fontWeight: FontWeight.w400,
                    fontSize: 21.0,
                    fontFamily: 'Lexend',
                  ),
                ),
                SizedBox(height: deviceHeight < 900 ? 30 : deviceHeight - 892),
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
                  onPressed: widget.getStarted,
                  child: const Text(
                    softWrap: true,
                    "Get Started",
                    style: TextStyle(
                      color: Color.fromRGBO(249, 249, 249, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                      fontFamily: 'Lexend',
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
