import 'package:flutter/material.dart';
import 'package:meetby_accident/Widgets/Home/GiantButton.dart';

class CalleeName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage profileAsset = AssetImage('lib/assets/Icons/profile.png');
    Image profileImage = Image(image: profileAsset, width: 40, height: 40);


    return ClipRRect(
      borderRadius: BorderRadius.circular(120.0),
      child: Padding(
        padding: EdgeInsets.only(left: 50.0, right: 50.0),
        child: Container(
          height: 60.0,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[ Container(
                child: Text(
                  "Markus",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black54,
                  ),
                )
            ),
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
