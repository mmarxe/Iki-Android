import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ikiapp/constants.dart';
import 'package:ikiapp/dashboard/home.dart';
import 'package:ikiapp/onboarding/signup/confirmemail.dart';
import 'package:ikiapp/onboarding/signup/signupmain.dart';
import 'package:ikiapp/onboarding/utils/finishup.dart';
import 'package:ikiapp/onboarding/utils/orientation.dart';
import 'package:ikiapp/onboarding/signup/signup.dart';

import 'onboarding/login/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'firebase_options.dart';


late bool logged_in;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
      logged_in = false;
    } else {
      print('User is signed in!');
      logged_in = true;
    }
  });

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IKI',
      theme: ThemeData(
        scaffoldBackgroundColor: darkBlue,
        useMaterial3: true,
      ),
      // home: logged_in? const Signup() : const Login(),
      initialRoute: logged_in? '/dashboardhome':'/startscreen',
      routes: {
        '/signupmain' : (context) => const SignupMain(),
        '/signup': (context) => const Signup(),
        '/login': (context) => const Login(),
        '/signupconfirm' : (context) => const SignupConfirm(),
        '/signupfinish' : (context) => const SignupFinish(),
        '/startscreen' : (context) => const StartScreen(),
        '/dashboardhome' : (context) => const DashboardHome()
      },
    );
  }
}
