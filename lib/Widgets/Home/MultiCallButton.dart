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
  int userAmount = 3;

  Widget users() {
    return Row(
      children: List.filled(
        userAmount,
        ProfileIcon(
          UserHelper().random,
          radius: 40,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          users(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(icon: Icon(Icons.add_box), onPressed: (){
                setState(() {
                  userAmount++;
                });
              }),
              IconButton(icon: Icon(Icons.refresh), onPressed: (){
                //TODO
              }),
              IconButton(icon: Icon(Icons.indeterminate_check_box), onPressed: (){
                setState(() {
                  userAmount--;
                });
              }),
            ],
          ),
        ],
      ),
    );
  }
}
