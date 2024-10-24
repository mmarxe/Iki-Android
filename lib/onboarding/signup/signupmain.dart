import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class SignupMain extends StatefulWidget {
  const SignupMain({Key? key}) : super(key: key);

  @override
  State<SignupMain> createState() => _SignupMainState();
}

class _SignupMainState extends State<SignupMain> {
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
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  "Start your wellness journey with iki today.",
                  style: GoogleFonts.tsukimiRounded(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                      onPressed: () {
                        print("Google!");
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
                        print("Microsoft!");
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
                        print("Facebook Signup");
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
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 20),
                child: SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                      style: primaryButtonStyle,
                      onPressed: () {
                        if (kDebugMode) {
                          print("Go to Email Sign up");
                        }
                        Navigator.pushNamed(
                            context, "/signup"
                        );
                      },
                      child: Text(
                        "Other Sign up options",
                        style: primaryButtonTextStyle,
                      )),
                ),
              ),
              Padding(
                padding:const EdgeInsets.fromLTRB(0, 8, 0, 20),
                child: InkWell(
                  onTap: (){
                    print("Go to Login!");
                    Navigator.popAndPushNamed(
                        context, "/login"
                    );
                  },
                  child: Text("Already have an account?",
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
    )));
  }
}
