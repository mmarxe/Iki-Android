

import 'package:flutter/material.dart';

import '../constants.dart';

class DashboardHome extends StatefulWidget{
  const DashboardHome({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DashboardHome();
  }

}

class _DashboardHome extends State<DashboardHome>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Welcome Home", style: primaryTextStyle,))
    );
  }

}