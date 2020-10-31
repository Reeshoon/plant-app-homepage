import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/screens/sign_in_page/HomePage.dart';
import 'package:plant_app/screens/flash_screen/Homepa.dart';
import 'package:plant_app/screens/details_page/detailHomepage.dart';
import 'package:plant_app/screens/home/listpage.dart';
import 'package:firebase_core/firebase_core.dart';


void main(){
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepa(),
      routes: {
        HomeScreen.id:(context) => HomeScreen(),
        HomePage.id:(context) => HomePage(),
        detailHomepage.id:(context) => detailHomepage(),
        ListPage.id:(context) => ListPage(),
      },
    );
  }
}


