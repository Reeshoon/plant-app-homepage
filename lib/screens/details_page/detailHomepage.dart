import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detailPage.dart';

var greenColor=Color(0xff32a05f);
var darkGreenColor=Color(0xff279152);
var productImage='https://i.pinimg.com/originals/8f/bf/44/8fbf441fa92b29ebd0f324effbd4e616.png';

class detailHomepage extends StatelessWidget {
  static const String id = 'detailHomepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: greenColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(108.0)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 8.0),
                          Icon(Icons.arrow_back),
                          SizedBox(height: 8.0),
                          Container(
                            width: 300.0,
                            child: Text(
                              'Fiddle Leaf Fig Topiary',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 32.0),
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            '10" Nursery Pot',
                            style: TextStyle(color: Colors.black45),
                          ),
                          SizedBox(height: 12.0),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text('\$',
                                    style: TextStyle(
                                        color: greenColor,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(width: 4.0),
                              Text('85',
                                  style: TextStyle(
                                      color: greenColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 52.0)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Spacer(
                            flex: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FloatingActionButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailsScreen()));
                                },
                                backgroundColor: greenColor,
                                child: Icon(Icons.shopping_cart),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height / 2,
                                width: MediaQuery.of(context).size.width / 2.5,
                                child: Image.network(
                                  productImage,
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0)
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 16.0),
                    Text('Planting', style: TextStyle(color: Colors.white)),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 100.0,
                          width: MediaQuery.of(context).size.width / 2 - 50,
                          decoration: BoxDecoration(
                              color: darkGreenColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32.0),
                                  topRight: Radius.circular(32.0))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '250',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 42.0),
                                  ),
                                  SizedBox(width: 8.0),
                                  Text(
                                    'ml',
                                    style: TextStyle(color: Colors.white54),
                                  )
                                ],
                              ),
                              Text(
                                'water',
                                style: TextStyle(color: Colors.white54),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 100.0,
                          width: MediaQuery.of(context).size.width / 2 - 50,
                          decoration: BoxDecoration(
                              color: darkGreenColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32.0),
                                  topRight: Radius.circular(32.0))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '18',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 42.0),
                                  ),
                                  SizedBox(width: 8.0),
                                  Text(
                                    'c',
                                    style: TextStyle(color: Colors.white54),
                                  )
                                ],
                              ),
                              Text(
                                'Sunshine',
                                style: TextStyle(color: Colors.white54),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}