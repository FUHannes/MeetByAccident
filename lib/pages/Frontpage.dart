import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Home/MultiCallButton.dart';
import 'package:meetby_accident/Widgets/Home/SingleCallButton.dart';
import 'package:meetby_accident/Widgets/Home/TopicChoose.dart';
import 'package:meetby_accident/Widgets/Reuse/UserWidgets.dart';
import 'package:meetby_accident/Widgets/Reuse/VideoBG.dart';
import 'package:meetby_accident/other/datahandler/Userhelper.dart';
import 'package:meetby_accident/pages/Settings.dart';

class Frontpage extends StatefulWidget {
  @override
  _FrontpageState createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  bool _isBig = true;

  @override
  Widget build(BuildContext context) {
    _isBig=MediaQuery.of(context).viewInsets.bottom == 0.0;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          VideoBG(),
          Container(
            color: Theme.of(context).canvasColor.withAlpha(20),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ProfileRow(),
                Column(
                  children: <Widget>[
                    AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: _isBig ? 130 : 70,
                        child: SingleCallButton()),
                    AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: _isBig ? 300 : 70,
                        child: MultiCallButton()),
                    TopicChooser(
                      onToggle: (bool big) {
                        setState(() {
                          //_isBig = !big;
                        });
                      },
                    ),
                  ],
                )
              ]),
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
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
      ),
      fillColor: Theme.of(context).backgroundColor.withAlpha(150),
      highlightColor: Theme.of(context).primaryColor.withAlpha(60),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Settings()));
      },
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                ProfileIcon(
                  me,
                  radius: 30,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      me.name,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 22,
                        color: Theme.of(context).textTheme.headline.color,
                      ),
                    ),
                    Text(
                      "Profil / Einstellungen",
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(context).textTheme.headline.color,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
