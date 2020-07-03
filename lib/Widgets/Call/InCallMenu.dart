import 'package:flutter/material.dart';
import 'package:meetby_accident/pages/Frontpage.dart';

class InCallMenu extends StatefulWidget {
  @override
  _InCallMenuState createState() => _InCallMenuState();
}

class _InCallMenuState extends State<InCallMenu> {
  bool activeMiniMenu = false;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(50.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (activeMiniMenu) InCallMiniMenu(),
          ClipRRect(
            borderRadius: BorderRadius.circular(120.0),
            child: Container(
              padding: EdgeInsets.all(10),
              color: Theme.of(context).canvasColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    color: Colors.red,
                    splashColor: Colors.red,
                    icon: Icon(Icons.call_end),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      activeMiniMenu ? Icons.cancel : Icons.more_vert,
                    ),
                    onPressed: () {
                      setState(() {
                        activeMiniMenu ^= true;
                      });
                    },
                  ),
                  IconButton(
                    tooltip: "Games (not yet available)",
                    icon: Icon(Icons.games),
                    onPressed: () {},
                  ),
                  IconButton(
                    color: Colors.green,
                    icon: Icon(Icons.person_add),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ), //your elements here
        ],
      ),
    );
  }
}

class InCallMiniMenu extends StatelessWidget {
  List<IconData> icons = [
    Icons.flash_on,
    Icons.switch_video,
    Icons.mic_off,
    Icons.videocam_off
  ];

  @override
  Widget build(BuildContext context) {
    //TODO: add other icons

    return Padding(
      padding: EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(120.0),
        child: Container(
          width: double.infinity,
          color: Colors.black45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
                icons.length,
                (index) => IconButton(
                      icon: Icon(
                        icons[index],
                      ),
                      onPressed: () {
                        //TODO
                      },
                    )),
          ),
        ),
      ),
    );
  }
}
