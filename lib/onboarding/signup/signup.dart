import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ikiapp/onboarding/signup/logic.dart';

import '../../constants.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
              CircleAvatar(
                radius: 40,
              ),
              SizedBox(
                height: 40,
              ),
              Text("Sign up with email",
                  style: GoogleFonts.tsukimiRounded(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: 10,
              ),
              Text("Please enter your email to proceed",
                  style: GoogleFonts.tsukimiRounded(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    // icon: Icon(Icons.email),
                    // iconColor: lightGreen,
                    labelText: "Email",
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
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    // icon: Icon(Icons.password),
                    // iconColor: lightGreen,
                    labelText: "Password",
                    labelStyle: primaryTextStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (value.length < 6) {
                      return 'Password must be atleast 6 characters long';
                    }
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                  style: primaryButtonStyle,
                  onPressed: () {
                    if (kDebugMode) {
                      print("Sign up");
                    }
                    signUp(emailController.text, passwordController.text, context);
                  },
                  child: Text(
                    "Continue",
                    style: primaryButtonTextStyle,
                  )),
            ),
          )
        ],
      ),
    )));
  }
}
