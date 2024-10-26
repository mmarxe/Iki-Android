

import 'package:flutter/material.dart';
import 'package:ikiapp/app/coach/home.dart';
import 'package:ikiapp/app/connect/home.dart';
import 'package:ikiapp/app/explore/home.dart';
import 'package:ikiapp/app/me/home.dart';
import 'package:ikiapp/app/passport/home.dart';
import 'package:ikiapp/components/appbar.dart';
import 'package:ikiapp/components/navbar.dart';

import '../constants.dart';

final PageController pageController = PageController();

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Home();
  }

}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const IkiAppBar(),
        bottomNavigationBar: const IkiNavBar(),
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            CoachHome(),
            ExploreHome(),
            PassportHome(),
            ConnectHome(),
            MeHome()
          ],
        )
    );
  }
}