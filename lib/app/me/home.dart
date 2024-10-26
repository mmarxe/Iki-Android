

import 'package:flutter/material.dart';
import '../../../constants.dart';

class MeHome extends StatefulWidget{
  const MeHome({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MeHome();
  }

}

class _MeHome extends State<MeHome>{
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Me", style: primaryTextStyle,));
  }

}