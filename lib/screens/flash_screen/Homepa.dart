import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plant_app/screens/sign_in_page/HomePage.dart';
import 'welcome.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Homepa extends StatefulWidget {

  @override
  _HomepaState createState() => _HomepaState();
}

class _HomepaState extends State<Homepa> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 5,),
            () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      backgroundColor: Colors.white,
      body:Center(


        child:
        Column
          (
          children:[
            Padding(
              padding: const EdgeInsets.only(top:200,),
              child: Container(
                height: 200,
                width: 200,
                child: Lottie.asset('assets/images/mahi.json'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:100,),
              child: SizedBox(
                width: 250.0,
                child: ColorizeAnimatedTextKit(
                    onTap: () {
                      print("Tap Event");
                    },
                    text:[
                      "Plantor",

                    ],

                    textStyle: TextStyle(
                      fontSize: 50.0,
                      fontFamily: "Horizon",

                    ),
                    colors: [
                      Colors.green,
                      Colors.orange,
                      Colors.green,
                      Colors.red,
                    ],
                    textAlign: TextAlign.start,
                    alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}