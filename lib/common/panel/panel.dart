import 'package:aprio/common/panel/panel_title.dart';
import 'package:flutter/material.dart';

class Panel extends StatelessWidget {
  final String panelTitle;
  final Widget panelAction;
  final Widget child;

  Panel({@required this.child, this.panelTitle, this.panelAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(220, 223, 231, 1),
          width: 1,
        ),
      ),
      child: Material(
        elevation: 2,
        color: Colors.white,
        child: Column(
          children: [
            if (panelTitle != null)
              PanelTitle(
                title: panelTitle,
                action: Container(),
              ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
