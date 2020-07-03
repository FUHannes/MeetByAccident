import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Home/GiantButton.dart';
import 'package:meetby_accident/other/datahandler/Userhelper.dart';

class CalleeName extends StatelessWidget {
  User user;
  CalleeName({
    @required this.user,
  });
  @override
  Widget build(BuildContext context) {
    AssetImage profileAsset = AssetImage('lib/assets/Icons/profile.png');
    Image profileImage = Image(image: profileAsset, width: 40, height: 40);
    return Padding(
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        child: Container(
          height: 60.0,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  child: Text(
                user.name,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black54,
                ),
              )),
              Container(
                child: GestureDetector(
                  onTap: () {}, // handle your image tap here
                  child: profileImage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
