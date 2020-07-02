import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Home/GiantButton.dart';
import 'package:meetby_accident/Widgets/Reuse/UserWidgets.dart';
import 'package:meetby_accident/other/datahandler/Userhelper.dart';
import 'package:meetby_accident/pages/GroupCall.dart';

class MultiCallButton extends StatelessWidget {
  final rollerKey = GlobalKey<_RollerState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: GiantButton(
        action: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GroupCall(
              users: rollerKey.currentState.userList,
            )),
          );
        },
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
                      color: Theme.of(context).textTheme.headline.color,
                    ),
                  ),
                  Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Roller(key:rollerKey),
            ],
          ),
        ),
      ),
    );
  }
}

class Roller extends StatefulWidget {
  Roller({Key key}) : super(key: key);
  @override
  _RollerState createState() => _RollerState();
}

class _RollerState extends State<Roller> {
  int userAmount = 3;

  List<User> userList = [];

  Widget users(width) {
    return Wrap(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(userAmount, (int index) {
        if (index >= userList.length) {
          userList.add(UserHelper().random);
        }
        User user = userList[index];
        return Column(
          children: <Widget>[
            ProfileIcon(
              user,
              radius: 90 / userAmount + 10,
            ),
            Text(user.name),
          ],
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(child: users(MediaQuery.of(context).size.width - 200)),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.add_box),
                  onPressed: () {
                    setState(() {
                      userAmount++;
                    });
                  }),
              IconButton(
                  icon: Icon(Icons.refresh),
                  onPressed: () {
                    setState(() {
                      userList = List.generate(
                          userAmount, (index) => UserHelper().random);
                    });
                  }),
              IconButton(
                  icon: Icon(Icons.indeterminate_check_box),
                  onPressed: () {
                    setState(() {
                      userAmount -= userAmount > 2 ? 1 : 0;
                    });
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
