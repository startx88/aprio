import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class UserControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: Offset.fromDirection(0.5, 1.8),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.png'),
          ),
          if (kIsWeb)
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text('Pradeep Kumar')
              ],
            ),
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
    );
  }
}
