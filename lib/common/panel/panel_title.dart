import 'package:flutter/material.dart';

class PanelTitle extends StatelessWidget {
  final String title;
  final Widget action;

  PanelTitle({this.title, this.action});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
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
          action
        ],
      ),
    );
  }
}
