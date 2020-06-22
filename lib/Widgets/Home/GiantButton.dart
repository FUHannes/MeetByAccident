import 'package:flutter/material.dart';

class GiantButton extends StatelessWidget {
  Widget child;
  double height;
  GiantButton({@required this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      fillColor: Theme.of(context).backgroundColor.withAlpha(150),
      highlightColor: Theme.of(context).primaryColor.withAlpha(60),
      onPressed: () {
      },
      child: Container(
        height: this.height,
        padding: EdgeInsets.all(20),
        child: child,
      )
    );
  }
}