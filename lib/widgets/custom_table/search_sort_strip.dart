import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchSortStrip extends StatefulWidget {
  final Function getRange;
  SearchSortStrip({this.getRange});
  @override
  _SearchSortStripState createState() => _SearchSortStripState();
}

class _SearchSortStripState extends State<SearchSortStrip> {
  int selectValue;

  @override
  void initState() {
    selectValue = 10;
    super.initState();
  }

  void onSelectRange(int val) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Text('Show'),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 80,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: DropdownButton(
                        underline: Container(
                          color: Colors.deepPurpleAccent,
                        ),
                        isDense: true,
                        isExpanded: true,
                        iconSize: 14,
                        icon: FaIcon(FontAwesomeIcons.sort),
                        value: selectValue,
                        items: <int>[10, 25, 50, 100]
                            .map<DropdownMenuItem<int>>((int value) {
                          return DropdownMenuItem<int>(
                            value: value,
                            child: Text('$value'),
                          );
                        }).toList(),
                        onChanged: (val) {
                          setState(() {
                            selectValue = val;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('entries')
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text('Search :'),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: 200,
                      height: 36,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.search),
                            hintText: 'Type to search...'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 50,
                      child: OutlineButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.list,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      child: OutlineButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.recent_actors,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
