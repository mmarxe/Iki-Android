

import 'package:flutter/material.dart';
import '../../../constants.dart';

class ExploreHome extends StatefulWidget{
  const ExploreHome({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExploreHome();
  }

}

class _ExploreHome extends State<ExploreHome>{
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Explore", style: primaryTextStyle,));
  }

}