import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Home/GiantButton.dart';

class InCallMiniMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: add other icons
    AssetImage cameraAsset = AssetImage('lib/assets/Icons/games.png');
    Image cameraImage = Image(image: cameraAsset, width: 30, height: 30);

    return Padding(
    padding: EdgeInsets.all(10.0),
      child: ClipRRect(
      borderRadius: BorderRadius.circular(120.0),

        child: Container(
          height: 60.0,
          width: double.infinity,
          color: Colors.black45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[ Container(
                child: GestureDetector(
                  onTap: () {
               /*     Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Frontpage()));
              */    }, // handle your image tap here
                  child: cameraImage,
                )
            ),
              Container(
                  child: GestureDetector(
                    onTap: () {
                      /*     Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Frontpage()));
              */    }, // handle your image tap here
                    child: cameraImage,
                  )
              ),Container(
                  child: GestureDetector(
                    onTap: () {
                      /*     Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Frontpage()));
              */    }, // handle your image tap here
                    child: cameraImage,
                  )
              ),Container(
                  child: GestureDetector(
                    onTap: () {
                      /*     Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Frontpage()));
              */    }, // handle your image tap here
                    child: cameraImage,
                  )
              ),Container(
                  child: GestureDetector(
                    onTap: () {
                      /*     Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Frontpage()));
              */    }, // handle your image tap here
                    child: cameraImage,
                  )
              ),Container(
                  child: GestureDetector(
                    onTap: () {
                      /*     Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Frontpage()));
              */    }, // handle your image tap here
                    child: cameraImage,
                  )
              ),Container(
                  child: GestureDetector(
                    onTap: () {
                      /*     Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Frontpage()));
              */    }, // handle your image tap here
                    child: cameraImage,
                  )
              ),],
          ),
        ),
      ),
    );
  }
}
