import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget drawerLinkItem(
  BuildContext context,
  Widget leadIcon,
  Widget title,
  Function pressed, [
  Icon trailIcon,
]) {
  return InkWell(
    highlightColor: Colors.white10,
    hoverColor: Colors.white10,
    onTap: pressed,
    child: ListTile(
      leading: leadIcon,
      title: Align(
        alignment: Alignment(-1.2, 0),
        child: title,
      ),
      trailing: trailIcon,
    ),
  );
}
