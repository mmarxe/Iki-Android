

import 'package:flutter/material.dart';
import '../../../constants.dart';

class CoachHome extends StatefulWidget{
  const CoachHome({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CoachHome();
  }

}

class _CoachHome extends State<CoachHome>{
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("My Coach", style: primaryTextStyle,));
  }

}