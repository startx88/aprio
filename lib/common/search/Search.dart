import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  final Function getSearch;
  final double width;
  final double height;
  final Color color;

  Search({this.getSearch, this.height, this.width, this.color});

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String searchValue;
  Color activeColor;

  @override
  void initState() {
    super.initState();
    searchValue = "";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      alignment: Alignment.center,
      width: widget.width,
      height: widget.height,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: widget.color.runtimeType == Color ? widget.color : Colors.grey,
          borderRadius: BorderRadius.circular(50.0)),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(Icons.search),
            hintText: 'Type to search...'),
      ),
    );
  }
}
