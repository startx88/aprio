import 'package:flutter/material.dart';

class TableTitle extends StatelessWidget {
  final String title;
  final Function starHandler;
  TableTitle({this.title, this.starHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          IconButton(
            icon: Icon(
              Icons.star_border,
              color: Colors.grey,
            ),
            onPressed: () => starHandler(),
          ),
        ],
      ),
    );
  }
}
