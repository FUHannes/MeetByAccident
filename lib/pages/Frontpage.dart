import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/MainDrawer.dart';
import 'package:meetby_accident/Widgets/Reuse/VideoBG.dart';
import 'package:meetby_accident/other/Userhelper.dart';

class Frontpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        VideoBG(),
        Container(
          color: Theme.of(context).canvasColor.withAlpha(155),
        ),
        Column(
          children: <Widget>[
            ProfileRow(),
          ]
        ),
      ],
    );
  }
}

class ProfileRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User me = UserHelper().me;
    return Container(
      padding: EdgeInsets.all(40),
      child: Row(
        children: <Widget>[
          ProfileIcon(),
          //TODO: real name
          Text(me.name, style: TextStyle(fontSize:22,color: Theme.of(context).textTheme.headline1.color),),
        ],
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
        backgroundColor: Color(0xffFDCF09),
        child: CircleAvatar(
          radius: radius,
          backgroundImage:user.profileImg,
        )
      )
    );
  }
}