import 'package:aprio/widgets/appbar/appbar.dart';
import 'package:aprio/widgets/drawer/drawer.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars("Aprio", context),
      drawer: Drawers(),
    );
  }
}
