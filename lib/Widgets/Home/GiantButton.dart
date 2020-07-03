import 'package:flutter/material.dart';

class GiantButton extends StatelessWidget {
  Widget child;
  double height;
  Function action;
  GiantButton({@required this.child, this.height, this.action});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RawMaterialButton(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        fillColor: Theme.of(context).backgroundColor.withAlpha(150),
        highlightColor: Theme.of(context).primaryColor.withAlpha(60),
        onPressed: () {
          this.action();
        },
        child: Container(
          height: this.height,
          padding: EdgeInsets.all(20),
          child: child,
        )
      ),
    );
  }
}