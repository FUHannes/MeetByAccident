import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Home/GiantButton.dart';

class TopicChooser extends StatefulWidget {
  @override
  _TopicChooserState createState() => _TopicChooserState();
}

class _TopicChooserState extends State<TopicChooser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom:20),
      child: GiantButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Container(
                width: MediaQuery.of(context).size.width-80,
                child: TextField(
                  
                ),
              ),
            ],
          ),
        
      ),
    );
  }
}