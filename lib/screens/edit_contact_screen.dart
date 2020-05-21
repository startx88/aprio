import 'package:aprio/common/panel/panel.dart';
import 'package:aprio/screens/step_form.dart';
import 'package:aprio/widgets/appbar/appbar.dart';
import 'package:aprio/widgets/drawer/Sidebar.dart';
import 'package:aprio/widgets/drawer/drawer.dart';
import 'package:aprio/widgets/page_title.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EditContactScreen extends StatefulWidget {
  static const routeName = "/edit-contact";
  @override
  _EditContactScreenState createState() => _EditContactScreenState();
}

class _EditContactScreenState extends State<EditContactScreen> {
  int step;

  @override
  void initState() {
    step = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) => kIsWeb
          ? Material(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Sidebar(),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        appBars('Contacts', context),
                        Expanded(
                          child: ListView(
                            padding: const EdgeInsets.all(20),
                            children: [
                              PageTitle(),
                              SizedBox(
                                height: 20,
                              ),
                              Panel(
                                panelTitle: 'Edit Contact',
                                child: StepForm(),
                              ),
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
              appBar: appBars('Contact', context),
              drawer: Drawers(),
            ),
    );
  }
}
