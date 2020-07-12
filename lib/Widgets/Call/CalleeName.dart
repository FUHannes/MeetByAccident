import 'package:flutter/material.dart';
import 'package:meetby_accident/other/datahandler/Userhelper.dart';
import 'package:meetby_accident/pages/ProfileInfo.dart';

class CalleeName extends StatelessWidget {
  User user;
  CalleeName({
    @required this.user,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        child: Container(
          height: 60.0,
          width: double.infinity,
          color: Theme.of(context).canvasColor.withAlpha(150),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  child: Text(
                user.name,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              )),
              Container(
                padding: EdgeInsets.symmetric(vertical:10),
                child: GestureDetector(
                  onTap: () {Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ProfileInfo(user: user)));}, // handle your image tap here
                  child: Image(image: user.profileImg,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
