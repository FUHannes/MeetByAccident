import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Home/GiantButton.dart';
import 'package:meetby_accident/Widgets/Reuse/UserWidgets.dart';
import 'package:meetby_accident/other/datahandler/Userhelper.dart';

class MultiCallButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: onclick
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: GiantButton(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Zufällig mehrere Kontakte anrufen",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).textTheme.headline1.color,
                    ),
                  ),
                  Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Roller(),
            ],
          ),
        ),
      ),
    );
  }
}

class Roller extends StatefulWidget {
  @override
  _RollerState createState() => _RollerState();
}

class _RollerState extends State<Roller> {
  Widget users = Row(
    children: <Widget>[
      ProfileIcon(
        UserHelper().random,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: users,
    );
  }
}
