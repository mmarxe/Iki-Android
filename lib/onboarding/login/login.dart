import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import 'logic.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _signupFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
              child: Form(
                key: _signupFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(),
                    Column(
                      children: [
                        CircleAvatar(radius: 40,),
                        SizedBox(height: 30,),
                        Text("Sign in",
                            style: GoogleFonts.tsukimiRounded(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: ElevatedButton(
                                onPressed: () {
                                  print("Google!");
                                  signInWithGoogle();
                                },
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    backgroundColor: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                    textStyle: GoogleFonts.tsukimiRounded(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                    ),
                                    Text("Continue with Google"),
                                    SizedBox()
                                  ],
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: ElevatedButton(
                                onPressed: () {
                                  print("Apple!");
                                },
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                    textStyle: GoogleFonts.tsukimiRounded(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                    ),
                                    Text("Continue with Apple"),
                                    SizedBox()
                                  ],
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: ElevatedButton(
                                onPressed: () {
                                  print("Microsoft Login!");
                                  signInWithMicrosoft();
                                },
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                    textStyle: GoogleFonts.tsukimiRounded(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                    ),
                                    Text("Continue with Microsoft"),
                                    SizedBox()
                                  ],
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: ElevatedButton(
                                onPressed: () {
                                  print("Facebook Login");
                                  signInWithFacebook();
                                },
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    backgroundColor: Colors.blueAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                    textStyle: GoogleFonts.tsukimiRounded(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      radius: 10,
                                    ),
                                    Text("Continue with Facebook"),
                                    SizedBox()
                                  ],
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text("Or login with Email",
                              style: GoogleFonts.tsukimiRounded(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                        SizedBox(
                          height: 10,
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
                        SizedBox(
                          height: 20,
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
                                    print("Logging in");
                                    login(emailController.text, passwordController.text, context);
                                  }
                                },
                                child: Text(
                                  "Log in",
                                  style: primaryButtonTextStyle,
                                )),
                          ),
                        ),
                        Padding(
                          padding:const EdgeInsets.fromLTRB(0, 8, 0, 20),
                          child: InkWell(
                            onTap: (){
                              print("Login!");
                            },
                            child: Text("Forgot your Password?",
                              style: GoogleFonts.tsukimiRounded(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding:const EdgeInsets.fromLTRB(0, 8, 0, 20),
                          child: InkWell(
                            onTap: (){
                              print("Go to sign up methods.");
                              Navigator.popAndPushNamed(
                                  context, "/signupmain"
                              );
                            },
                            child: Text("New here? Create an account?",
                              style: GoogleFonts.tsukimiRounded(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,),
                          ),
                        ),
                        SizedBox(height: 40,)
                      ],
                    ),
                  ],
                ),
              )),
        ));
  }
}
