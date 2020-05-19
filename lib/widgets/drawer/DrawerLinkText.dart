import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerText extends StatelessWidget {
  final String title;
  final Color color;

  DrawerText(this.title, [this.color]);
  @override
  Widget build(BuildContext context) {
    print(color.runtimeType);
    return Text(
      title,
      style: TextStyle(
          color: color.runtimeType == MaterialColor ? color : Colors.white),
    );
  }
}
