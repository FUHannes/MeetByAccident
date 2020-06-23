import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/BetterListTile.dart';
import 'package:meetby_accident/pages/Settings.dart';

class MainDrawer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(child: Text('meet by Accident',style: TextStyle(fontSize:32, color:  Theme.of(context).backgroundColor),)),
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topLeft,colors:[Theme.of(context).primaryColor,Theme.of(context).accentColor]),
            ),
          ),
          BetterListTile(
            icon:Icons.settings,
            text: 'Einstellungen',
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()),);
            },
          ),
        ],
      ),
    );
  }
}