import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Call/InCallMenu.dart';
import 'package:meetby_accident/Widgets/Call/InCallMiniMenu.dart';
import 'package:meetby_accident/Widgets/Call/CalleeName.dart';

class GroupCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int activeMiniMenu = 0;
    return Scaffold(
      body: Stack(
        children: <Widget>[
      new Column(
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Container(
                height: (MediaQuery.of(context).size.height)/ 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: new AssetImage("lib/assets/Photos/markus.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              new CalleeName(name: 'Markus'),
            ]
          ),
          new Stack(
              children: <Widget>[
                new Container(
                  height: (MediaQuery.of(context).size.height)/ 2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: new AssetImage("lib/assets/Photos/tina.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                new CalleeName(name: 'Tina Makari'),
              ]
          )
        ]
      ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              if(activeMiniMenu == 1) InCallMiniMenu(),
              InCallMenu()//your elements here
            ],
          ),
        ],
      ),
    );
  }
}