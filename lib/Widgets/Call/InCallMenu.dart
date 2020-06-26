import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Home/GiantButton.dart';
import 'package:meetby_accident/pages/Frontpage.dart';

class InCallMenu extends StatelessWidget {
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
        padding: EdgeInsets.all(18.0),
        child: Container(
          height: 100.0,
          width: double.infinity,
          color: Colors.white,
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
                color: Colors.blue,
                child: FlutterLogo(
                  size: 60.0,
                ),
              ),
              Container(
                  child: GestureDetector(
                    onTap: () {}, // handle your image tap here
                    child: games,
                  )
              ),],
          ),
        ),
      ),
    );
  }
}
