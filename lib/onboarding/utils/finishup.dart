import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import '../../constants.dart';

class SignupFinish extends StatefulWidget {
  const SignupFinish({Key? key}) : super(key: key);

  @override
  State<SignupFinish> createState() => _SignupFinishState();
}

class _SignupFinishState extends State<SignupFinish> {
  final _signupFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Form(
              key: _signupFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: InkWell(
                          onTap: (){
                            Navigator.popAndPushNamed(
                                context, "/dashboardhome"
                            );
                          },
                          child: Text(
                            "Hold on tight...",
                            style: GoogleFonts.tsukimiRounded(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "We're setting up everything for you.",
                          style: GoogleFonts.tsukimiRounded(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 40,),
                      CircularProgressIndicator(
                        color: lightGreen,
                      ),
                      SizedBox(height: 40,)
                    ],
                  ),
                ],
              ),
            )));
  }
}
