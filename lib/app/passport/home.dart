

import 'package:flutter/material.dart';
import '../../../constants.dart';

class PassportHome extends StatefulWidget{
  const PassportHome({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PassportHome();
  }

}

class _PassportHome extends State<PassportHome>{
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Passport", style: primaryTextStyle,));
  }

}