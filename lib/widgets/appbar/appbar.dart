import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:aprio/common/usercontrol/user_control.dart';

Widget appBars(
  String title,
  BuildContext context,
) {
  return AppBar(
    automaticallyImplyLeading: !kIsWeb,
    title: Row(
      children: [
        kIsWeb
            ? IconButton(
                onPressed: () {
                  // Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.dehaze),
              )
            : Align(alignment: Alignment(-1.2, 0), child: Text(title)),
        if (kIsWeb)
          Container(
            margin: const EdgeInsets.only(left: 10),
            width: 250,
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                  hintText: 'Type to search...'),
            ),
          )
      ],
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.mail),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.notifications),
        onPressed: () {},
      ),
      UserControl(),
      SizedBox(
        width: 15,
      ),
    ],
  );
}
