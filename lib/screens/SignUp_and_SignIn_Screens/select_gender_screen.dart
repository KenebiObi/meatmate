import "package:flutter/material.dart";

class SelectGenderScreen extends StatefulWidget {
  const SelectGenderScreen({super.key});

  @override
  State<SelectGenderScreen> createState() => _SelectGenderScreenState();
}

class _SelectGenderScreenState extends State<SelectGenderScreen> {
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
                        "Gender & Interest",
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
              SizedBox(height: deviceHeight < 900 ? 30 : deviceHeight - 892),
            ],
          ),
        ),
      ),
    );
  }
}
