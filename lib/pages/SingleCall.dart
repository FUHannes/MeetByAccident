import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Call/InCallMenu.dart';
import 'package:meetby_accident/Widgets/Call/InCallMiniMenu.dart';
import 'package:meetby_accident/Widgets/Call/CalleeName.dart';
import 'package:meetby_accident/Widgets/Reuse/UserWidgets.dart';
import 'package:meetby_accident/other/datahandler/Userhelper.dart';
import 'package:meetby_accident/pages/GroupCall.dart';

class SingleCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = UserHelper().random;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileIcon(user),
            Text(user.name),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.call),
        onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => GroupCall(users:[user])));
      }),
    );
  }
}
