import 'package:flutter/material.dart';

class Navigation {
  String title;
  IconData icon;

  Navigation({@required this.title, @required this.icon});
}

List<Navigation> menuItems = [
  Navigation(title: 'Boardroom', icon: Icons.home),
];
