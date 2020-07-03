import 'package:flutter/material.dart';
import 'package:meetby_accident/other/datahandler/Userhelper.dart';

class UserSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Nutzername",
        style: Theme.of(context).textTheme.headline5,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: UserHelper().me.name,
            hintStyle: TextStyle(
                      color: Theme.of(context).textTheme.headline.color,
                    ),
          ),
          onSubmitted: (value) {
            print(User.morph(UserHelper().me,name: value).name);
            UserHelper().me = User.morph(UserHelper().me,name: value);
            print(UserHelper().me.name);
          },
        ),
      ],
    );
  }
}
