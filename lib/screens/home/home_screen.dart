import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/body.dart';
import 'package:plant_app/screens/home/components/my_bottom_navbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatelessWidget{
  static const String id = 'HomeScreen';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
}
}
AppBar buildAppbar(){
  return AppBar(
      elevation: 0,
      leading:IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
  onPressed: (){},
  ) ,
    backgroundColor: kPrimaryColor,

  );
}