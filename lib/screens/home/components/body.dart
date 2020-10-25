import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'header_with_searchbox.dart';
import 'title_with_more_btn.dart';
import 'recommended_plants.dart';
import 'featured_plants.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size= MediaQuery.of(context).size;
    return SingleChildScrollView(
        child:Column(
          children: <Widget>[
            HeaderWithSearchBox(size: size),
            TitleWithMoreBtn(
              title: "Recommended",
              press: (){},
            ),
            RecommendedPlants(),
            TitleWithMoreBtn(title: "Featured Plants",press: (){},),
            FeaturedPlants(),
            SizedBox(height: kDefaultPadding,)


          ],
        ),
    );

  }
}



