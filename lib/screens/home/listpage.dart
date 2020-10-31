import 'package:plant_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';


class ListPage extends StatefulWidget {
  static const String id = 'ListPage';
  @override
  _ListPage createState() => _ListPage ();
}

class _ListPage extends State<ListPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('List Page'),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('plant_details').snapshots(),
        builder: (context, snapshot){
          if(!snapshot.hasData) return Text('Loading');
          return Column(
            children: <Widget> [
              Text(snapshot.data.documents[0]['Name']),
            ],
          );
        },
      ),
    );
  }
}