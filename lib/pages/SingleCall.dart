import 'package:flutter/material.dart';

class SingleCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Theme.of(context).canvasColor.withAlpha(20),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children:  <Widget>[
                  ],
                )
              ]),
        ],
      ),
    );
  }
}