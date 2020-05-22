import 'package:aprio/common/panel/panel.dart';
import 'package:aprio/common/stepper/stepper.dart';
import 'package:aprio/screens/contact/address_info.dart';
import 'package:aprio/screens/contact/bio_signature.dart';
import 'package:aprio/screens/contact/contact_info.dart';
import 'package:aprio/screens/contact/personal_info.dart';
import 'package:aprio/screens/step_form.dart';
import 'package:aprio/widgets/appbar/appbar.dart';
import 'package:aprio/widgets/drawer/Sidebar.dart';
import 'package:aprio/widgets/page_title.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EditContactScreen extends StatefulWidget {
  static const routeName = "/edit-contact";
  @override
  _EditContactScreenState createState() => _EditContactScreenState();
}

class _EditContactScreenState extends State<EditContactScreen> {
  int step = 1;
  final GlobalKey<FormState> _contactForm = GlobalKey<FormState>();

  @override
  void initState() {
    step = 1;
    super.initState();
  }

  void handler(count) {
    setState(() {
      step = count;
    });
  }

  void next() {
    setState(() {
      if (step < 5) {
        step = step + 1;
      }
    });
  }

  void prev() {
    setState(() {
      if (step > 1) {
        step = step - 1;
      }
    });
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
                        appBars('Edit Contacts', context),
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
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                title: Text(
                  'New Contact',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              body: SingleChildScrollView(
                  child: Column(
                children: [
                  CustomStepper(
                    currentStep: step,
                    handler: handler,
                  ),
                  Form(
                      key: _contactForm,
                      child: Column(
                        children: [
                          if (step == 1)
                            PersonalInfo(
                              next: next,
                            ),
                          if (step == 2)
                            AddressInformation(
                              next: next,
                              prev: prev,
                            ),
                          if (step == 3)
                            ContactInformation(
                              next: next,
                              prev: prev,
                            ),
                          if (step == 4)
                            BioAndSignature(
                              prev: prev,
                            )
                        ],
                      ))
                ],
              )),
            ),
    );
  }
}
