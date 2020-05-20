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
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("Export -"),
                      Container(
                        width: 50,
                        height: 30,
                        child: OutlineButton(
                          borderSide: BorderSide.none,
                          hoverColor: Colors.white,
                          onPressed: () {},
                          child: FaIcon(
                            FontAwesomeIcons.fileCsv,
                          ),
                        ),
                      ),
                      VerticalDivider(
                        width: 1,
                        thickness: 1,
                        color: Colors.black,
                        indent: 15,
                        endIndent: 15,
                      ),
                      Container(
                        width: 60,
                        height: 30,
                        child: OutlineButton(
                          borderSide: BorderSide.none,
                          hoverColor: Colors.white,
                          onPressed: () {},
                          child: FaIcon(
                            FontAwesomeIcons.addressCard,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Row(
                  children: [
                    const Text('Contact'),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '8',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Row(
                  children: [
                    Text('Users'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '4',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
                const SizedBox(width: 20.0),
                FlatButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Add new Contact',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
