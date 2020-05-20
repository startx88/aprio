import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:aprio/widgets/appbar/appbar.dart';
import 'package:aprio/widgets/drawer/Sidebar.dart';
import 'package:aprio/widgets/drawer/drawer.dart';

class DashboardScreen extends StatefulWidget {
  static const routeName = "/";
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return kIsWeb
            ? Material(
                child: Row(
                  children: [
                    Sidebar(),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        children: [
                          appBars('Aprio', context),
                          Expanded(
                            child: ListView(
                              padding: const EdgeInsets.all(20),
                              children: [
                                Text("Hello"),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            : Scaffold(
                appBar: appBars("Aprio", context),
                drawer: Drawers(),
              );
      },
    );
  }
}
