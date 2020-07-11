import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Home/GiantButton.dart';
import 'package:meetby_accident/pages/SingleCall.dart';

class SingleCallButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: onclick
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: GiantButton(
        action: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SingleCall()),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Call a random person",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).textTheme.headline.color,
                ),
              ),
              Icon(Icons.call, color: Colors.green,),
            ],
          ),
        ),
      ),
    );
  }
}
