import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Home/GiantButton.dart';

class SingleCallButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: onclick
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: GiantButton(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Zufällig einen Kontakt anrufen",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).textTheme.headline1.color,
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
