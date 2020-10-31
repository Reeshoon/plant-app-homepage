import 'package:plant_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:plant_app/screens/home/model.dart';


class ListPage extends StatefulWidget {
  static const String id = 'ListPage';
  @override
  _ListPage createState() => _ListPage ();
}

class _ListPage extends State<ListPage>{
  final fb= FirebaseDatabase.instance.reference().child("plant_details");
  List<Model>list = List();
  @override
  void initState(){
    super.initState();
    fb.once().then((DataSnapshot snap){
      var data=snap.value;
      list.clear();
      data.forEach((value){
        Model model = new Model(
          name: value['name'],
          size: value['size'],
          sunshine: value['sunshine'],
        );
        setState(() {

        });
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    Widget UI(String name,String size, String sunshine){
      return new GestureDetector(
        onLongPress: (){},
        onTap: (){},
        child: Card(
          child: Column(
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      );
    }
      return Scaffold(
        appBar: AppBar(
          title: Text("Details Page"),
          backgroundColor: Colors.green,
        ),
        body: new Container(
          child: list.length==0?Text("Data is null"): new ListView.builder(
            itemCount: list.length,
              itemBuilder:(_,index){
                  return UI(list[index].name, list[index].size,list[index].sunshine);
              }
          ),
        ),
      );
  }

}