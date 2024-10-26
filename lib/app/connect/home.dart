

import 'package:flutter/material.dart';
import '../../../constants.dart';

class ConnectHome extends StatefulWidget{
  const ConnectHome({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ConnectHome();
  }

}

class _ConnectHome extends State<ConnectHome>{
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Connect", style: primaryTextStyle,));
  }

}