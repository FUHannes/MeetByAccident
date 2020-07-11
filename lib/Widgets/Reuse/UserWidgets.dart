import 'package:flutter/material.dart';
import 'package:meetby_accident/other/datahandler/Userhelper.dart';

class ProfileIcon extends StatelessWidget {
  double radius;
  User user;

  ProfileIcon(this.user, {this.radius = 50, });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: radius * 1.1,
        child: CircleAvatar(
          radius: radius,
          backgroundImage: user.profileImg,
        ),
      ),
    );
  }
}
