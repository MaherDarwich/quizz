// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Catugary extends StatefulWidget {
  const Catugary({Key? key}) : super(key: key);

  @override
  _CatugaryState createState() => _CatugaryState();
}

class _CatugaryState extends State<Catugary> {
  List<Map> cat = [
    {
      'id': 1,
      'name': ' عامة',
      'img': 'trex.png',
      'isfavoite': 'true',
    },
    {
      'id': 2,
      'name': ' رياضية',
      'img': 'tarneeb.png',
      'isfavoite': 'false',
    },
    {
      'id': 3,
      'name': ' علوم',
      'img': 'trex.png',
      'isfavoite': 'true',
    },
    {
      'id': 4,
      'name': ' فلك',
      'img': 'trex.png',
      'isfavoite': 'true',
    },
    {
      'id': 5,
      'name': ' رياضيات',
      'img': 'tarneeb.png',
      'isfavoite': 'false',
    },
    {
      'id': 6,
      'name': ' فلك',
      'img': 'trex.png',
      'isfavoite': 'true',
    },
    {
      'id': 7,
      'name': ' رياضة',
      'img': 'trex.png',
      'isfavoite': 'true',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Colors.black,
        body: SafeArea(
          
          child: ListView.builder(
              itemCount: cat.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Card(
                    elevation:222,
                    // margin: EdgeInsets.all(10),
                    // color: Colors.black87,
                    shadowColor: Colors.blue,

                    child: Card(
                      color: Colors.black87,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 75.0,
                          ),
                          // Flex(direction: Axis()),
                          Text(
                            cat[index]['img'].toString(),
                            style: TextStyle(color: Colors.white),
                            textScaleFactor: 2,
                          ),
                          // Text(cat[index]['id'].toString(),
                          //     style: TextStyle(color: Colors.white),
                          //     textScaleFactor: 2),
                          Text(cat[index]['name'].toString(),
                              style: TextStyle(color: Colors.white),
                              textScaleFactor: 2),
                          cat[index]['isfavoite'] == 'true'
                              ? Icon(
                                  EvaIcons.heart,
                                  color: Colors.red,
                                )
                              : Icon(EvaIcons.heart)
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}
