import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TableInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Text('Shoing 1 to 25 of 57 entries'),
                const SizedBox(width: 25.0),
                Container(
                  child: Row(
                    children: [
                      Text("Export"),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.fileCsv,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                      Divider(
                        height: 20,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        width: 50,
                        child: OutlineButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.list,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
