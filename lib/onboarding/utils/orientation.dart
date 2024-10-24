import 'package:flutter/material.dart';
import 'package:ikiapp/constants.dart';


class StartData{
  final String imgurl;
  final String txt;
  final String buttontxt;

  StartData({
    required this.imgurl,
    required this.txt,
    required this.buttontxt
  });
// Can add methods for other work
}

List<StartData> screens = [
  StartData(
      imgurl: "https://images.pexels.com/photos/27182326/pexels-photo-27182326/free-photo-of-icebergs-on-seashore-in-iceland.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      txt: "Personalize your journey towards mindfulness, wellness and overall health.",
      buttontxt: "Get Started"
  ),
  StartData(
      imgurl: "https://images.pexels.com/photos/27182326/pexels-photo-27182326/free-photo-of-icebergs-on-seashore-in-iceland.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
      txt: "Done",
      buttontxt: "Get Started"
  ),
];

class StartScreen extends StatefulWidget{

    const StartScreen({Key? key}): super(key:key);

    @override
  State<StatefulWidget> createState() => _StartScreenState();
}


class _StartScreenState extends State<StartScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            OrientationView(orData: screens[0]),
            OrientationView(orData: screens[0]),
            OrientationView(orData: screens[0]),
          ],
        ),
      ),
    );
  }
}



class OrientationView extends StatelessWidget{
  const OrientationView({super.key, required this.orData});

  final StartData orData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(radius: 30,),
          Container(
              decoration: primaryContainerStyle,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Image.network(
                orData.imgurl,
                // width: MediaQuery.of(context).size.width * 0.8,
          )),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(orData.txt, style: primaryTextStyle, textAlign: TextAlign.center,),
            ),
          ),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.8,
            child: ElevatedButton(
                style: primaryButtonStyle,
                onPressed: (){
                  print("Pressable");
                },
                child: Text(orData.buttontxt, style: primaryButtonTextStyle,)
            ),
          )
        ],
      ),
    );
  }
}