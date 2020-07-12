import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Reuse/UserWidgets.dart';
import 'package:meetby_accident/other/datahandler/Userhelper.dart';
import 'package:meetby_accident/pages/GroupCall.dart';
import 'package:meetby_accident/pages/ProfileInfo.dart';


class SingleCall extends StatelessWidget {

  ///if null: new singlecall
  Function callback;
  SingleCall({this.callback});

  @override
  Widget build(BuildContext context) {
    User user = UserHelper().generate;
    return Scaffold(
      backgroundColor: (callback!=null)?Theme.of(context).canvasColor.withAlpha(100):null,
      body: ProfileInfo(
        user: user
      ),
      floatingActionButton: Stack(
        children: <Widget>[
      Padding(padding: EdgeInsets.only(left:31),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
                heroTag: null,
                backgroundColor: Colors.redAccent,
                child: Icon(Icons.close),
                onPressed: () {
                  if(callback!=null){
                    callback(user);
                  }else{
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => GroupCall(users:[user])));
                  }
                }),
          ),),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
                heroTag: null,
                backgroundColor: Colors.green,
                child: Icon(Icons.call),
                onPressed: () {
                  if(callback!=null){
                    callback(user);
                  }else{
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => GroupCall(users:[user])));
                  }
                }),
          ),
        ],
      ),

    );
  }
}
