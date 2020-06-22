import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/MainDrawer.dart';
import 'package:meetby_accident/Widgets/Reuse/VideoBG.dart';
import 'package:meetby_accident/other/Userhelper.dart';
import 'package:meetby_accident/pages/Settings.dart';

class Frontpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: <Widget>[
          VideoBG(),
          Container(
            color: Theme.of(context).canvasColor.withAlpha(20),
          ),
          Column(
            children: <Widget>[
              ProfileRow(),
            ]
          ),
        ],
      ),
    );
  }
}

class ProfileRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User me = UserHelper().me;
    return RawMaterialButton(
      highlightColor: Theme.of(context).primaryColor.withAlpha(60),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
        },
        child: Container(
      padding: EdgeInsets.all(40),
      child: Row(
          children: <Widget>[
            ProfileIcon(me,radius: 30,),
            SizedBox(width:10),
            //TODO: real name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(me.name,maxLines: 2, style: TextStyle(fontSize:22,color: Theme.of(context).textTheme.headline2.color,),),
                Text("Profil / Einstellungen", style: TextStyle(fontSize:12,color: Theme.of(context).textTheme.headline2.color,),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileIcon extends StatelessWidget {
  double radius;
  User user;

  ProfileIcon(this.user,{this.radius=50});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:CircleAvatar(
        radius: radius*1.1,
        backgroundColor: Theme.of(context).backgroundColor,
        child: CircleAvatar(
          radius: radius,
          backgroundImage:user.profileImg,
        )
      )
    );
  }
}