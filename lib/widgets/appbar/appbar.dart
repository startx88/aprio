import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
            : Text(title),
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
      PopupMenuButton(
        offset: Offset.fromDirection(0.5, 1.8),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            SizedBox(
              width: 15,
            ),
            Text('Pradeep Kumar')
          ],
        ),
        onSelected: (int val) {},
        itemBuilder: (_) => [
          PopupMenuItem(
            child: Container(
              width: 120,
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(),
                  )
                ],
              ),
            ),
            value: 0,
          ),
          PopupMenuItem(
            child: Container(
              width: 120,
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(),
                  )
                ],
              ),
            ),
            value: 1,
          ),
          PopupMenuItem(
            child: Container(
              width: 120,
              child: Row(
                children: [
                  Icon(
                    Icons.lock,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Logout",
                    style: TextStyle(),
                  )
                ],
              ),
            ),
            value: 2,
          ),
        ],
      ),
      SizedBox(
        width: 15,
      )
    ],
  );
}
