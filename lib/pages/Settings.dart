import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Settings/ThemeSettings.dart';

class Settings
    extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Einstellungen"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 30,),
          ThemeSettings(),
          SizedBox(height:15),
        ],
      ),
    );
  }
}