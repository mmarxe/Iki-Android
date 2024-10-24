import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class SignupConfirm extends StatefulWidget {
  const SignupConfirm({Key? key}) : super(key: key);

  @override
  State<SignupConfirm> createState() => _SignupConfirmState();
}

class _SignupConfirmState extends State<SignupConfirm> {
  final _signupConfirmFormKey = GlobalKey<FormState>();
  final TextEditingController codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Form(
              key: _signupConfirmFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text("Confirm your email",
                          style: GoogleFonts.tsukimiRounded(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text("Check your email, click the magic link or paste the sign-in code from the email ",
                            style: GoogleFonts.tsukimiRounded(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          controller: codeController,
                          decoration: InputDecoration(
                            // icon: Icon(Icons.email),
                            // iconColor: lightGreen,
                            labelText: "Code",
                            labelStyle: primaryTextStyle,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: ElevatedButton(
                              style: primaryButtonStyle,
                              onPressed: () {
                                if (kDebugMode) {
                                  print("Pressable");
                                }
                              },
                              child: Text(
                                "Resend Email",
                                style: primaryButtonTextStyle,
                              )),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: ElevatedButton(
                              style: primaryButtonStyle,
                              onPressed: () {
                                if (kDebugMode) {
                                  print("Pressable");
                                }
                                Navigator.popAndPushNamed(
                                    context, "/signupfinish"
                                );
                              },
                              child: Text(
                                "Confirm",
                                style: primaryButtonTextStyle,
                              )),
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  )
                ],
              ),
            )));
  }
}
