import 'package:flutter/material.dart';
import 'package:meetby_accident/pages/Frontpage.dart';
import 'package:meetby_accident/Widgets/Call/InCallMiniMenu.dart';

class InCallMenu extends StatelessWidget {
  bool activeMiniMenu = true;
  @override
  Widget build(BuildContext context) {
    //TODO: onclick
    AssetImage hangUpAsset = AssetImage('lib/assets/Icons/hangUp.png');
    Image hangUpImage = Image(image: hangUpAsset, width: 55, height: 55);

    AssetImage gamesAsset = AssetImage('lib/assets/Icons/games.png');
    Image games = Image(image: gamesAsset, width: 55, height: 55);

    return Padding(
        padding: EdgeInsets.all(50.0),
        child: Container(
          width: double.infinity,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          new Column(
          children: <Widget>[
              if(activeMiniMenu) InCallMiniMenu(),
       ClipRRect(
          borderRadius: BorderRadius.circular(120.0),
          child: Container(
              color: Colors.white,
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:[ Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Frontpage()));
                      }, // handle your image tap here
                      child: hangUpImage,
                    )
                ),
                  Container(
                      child: IconButton(
                        icon: Icon(Icons.more_vert,
                          color: Colors.black,),
                        onPressed: () {activeMiniMenu = false;},  //ToDo show hide with stateful widget?
                      )
                  ),
                  Container(
                      child: GestureDetector(
                        onTap: () {}, // handle your image tap here
                        child: games,
                      )
                  ),],
              ))),//your elements here
            ])
            ],
          ),
        ),
    );
  }
}
