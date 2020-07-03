import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Reuse/UserWidgets.dart';
import 'package:meetby_accident/other/datahandler/Userhelper.dart';
import 'package:meetby_accident/pages/GroupCall.dart';

class SingleCall extends StatelessWidget {

  ///if null: new singlecall
  Function callback;
  SingleCall({this.callback});

  @override
  Widget build(BuildContext context) {
    User user = UserHelper().random;
    return Scaffold(
      backgroundColor: (callback!=null)?Theme.of(context).canvasColor.withAlpha(100):null,
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
          if(callback!=null){
            callback(user);
          }else{
            Navigator.push(
            context, MaterialPageRoute(builder: (context) => GroupCall(users:[user])));
          }
      }),
    );
  }
}
