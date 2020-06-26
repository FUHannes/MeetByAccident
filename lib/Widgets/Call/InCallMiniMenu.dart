import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Home/GiantButton.dart';

class InCallMiniMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: onclick
    AssetImage hangUpAsset = AssetImage('lib/assets/Icons/hangUp.png');
    Image hangUpImage = Image(image: hangUpAsset, width: 80, height: 80);

    AssetImage gamesAsset = AssetImage('lib/assets/Icons/games.png');
    Image games = Image(image: gamesAsset, width: 80, height: 80);

    return ClipRRect(
      borderRadius: BorderRadius.circular(120.0),
      child: Padding(
        padding: EdgeInsets.all(50.0),
        child: Container(
          height: 50.0,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[ Container(
                child: hangUpImage
            ),
              Container(
                color: Colors.blue,
                child: FlutterLogo(
                  size: 60.0,
                ),
              ),
              Container(
                  child: games
              ),],
          ),
        ),
      ),
    );
  }
}
