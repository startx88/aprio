import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ContactStepper {
  final String title;
  Color color;

  ContactStepper({this.title, this.color});
}

List<ContactStepper> stepperList = [
  ContactStepper(title: 'Personal Information', color: Colors.blue),
  ContactStepper(title: 'Address Information', color: Colors.blue),
  ContactStepper(title: 'Contact Information', color: Colors.blue),
  ContactStepper(title: 'Bio & Signature', color: Colors.blue),
];

class StepForm extends StatefulWidget {
  final Function getContactInfo;

  StepForm({this.getContactInfo});

  @override
  _StepFormState createState() => _StepFormState();
}

class _StepFormState extends State<StepForm> {
  int step;
  Widget child;

  @override
  void initState() {
    step = 1;
    super.initState();
  }

  void nextHandler(steps) {
    setState(() {
      if (step < 5) {
        step = steps;
      }
    });
  }

  void prevHandler() {
    setState(() {
      if (step > 1) {
        step = step - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
      switch (step) {
        case 1:
          child = Container(
            padding: const EdgeInsets.only(top: 80.0),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 80.0,
              runSpacing: 30.0,
              verticalDirection: VerticalDirection.down,
              children: [
                Container(
                  width: media.width,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/avatar.png'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            child: Text('Edit'),
                            onPressed: () {},
                          ),
                          Text('/'),
                          FlatButton(
                            child: Text('Delete'),
                            onPressed: () {},
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: kIsWeb ? media.width * 0.22 : media.width,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'First Name',
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: kIsWeb ? media.width * 0.22 : media.width,
                  child: TextField(
                    inputFormatters: [],
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: kIsWeb ? media.width * 0.22 : media.width,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Organization',
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: kIsWeb ? media.width * 0.22 : media.width,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Title',
                    ),
                  ),
                ),
              ],
            ),
          );
          break;
        case 2:
          child = Container(
              padding: const EdgeInsets.only(top: 80.0),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Home Address',
                            style: Theme.of(context).textTheme.headline5),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          width: kIsWeb ? media.width * 0.22 : media.width,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Street',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          width: kIsWeb ? media.width * 0.22 : media.width,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'City',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          width: kIsWeb ? media.width * 0.22 : media.width,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'State / Province',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          width: kIsWeb ? media.width * 0.22 : media.width,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Zip / Postal Code',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          width: kIsWeb ? media.width * 0.22 : media.width,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Country / Region',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Work Address',
                            style: Theme.of(context).textTheme.headline5),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          width: kIsWeb ? media.width * 0.22 : media.width,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Street',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          width: kIsWeb ? media.width * 0.22 : media.width,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'City',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          width: kIsWeb ? media.width * 0.22 : media.width,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'State / Province',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          width: kIsWeb ? media.width * 0.22 : media.width,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Zip / Postal Code',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          width: kIsWeb ? media.width * 0.22 : media.width,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Country / Region',
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ));
          break;
        case 3:
          child = Container(
              padding: const EdgeInsets.only(top: 80.0),
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 100.0,
                runSpacing: 30.0,
                verticalDirection: VerticalDirection.down,
                children: [
                  Container(
                    height: 50,
                    width: kIsWeb ? media.width * 0.22 : media.width,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Work Phone',
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: kIsWeb ? media.width * 0.22 : media.width,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mobile Phone',
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: kIsWeb ? media.width * 0.22 : media.width,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Home Phone',
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: kIsWeb ? media.width * 0.22 : media.width,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Work Fax',
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: kIsWeb ? media.width * 0.22 : media.width,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: kIsWeb ? media.width * 0.22 : media.width,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Alternative Email',
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: media.width,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Wep page address',
                      ),
                    ),
                  ),
                ],
              ));
          break;
        case 4:
          child = Container(child: Text('hello'));
          break;
      }

      return Container(
        margin: EdgeInsets.symmetric(horizontal: 100),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: constraint.maxWidth <= 1024
                  ? media.width * 0.25
                  : media.width * 0.15,
              child: Column(
                children: stepperList.map(
                  (e) {
                    var count = stepperList.indexOf(e) + 1;
                    return Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: step == count
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                      ),
                      child: FlatButton(
                        onPressed: () => nextHandler(count),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color.fromRGBO(0, 155, 208, 1),
                              child: Text(count.toString()),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              e.title,
                              style: TextStyle(
                                color: step == count
                                    ? Colors.white
                                    : Color.fromRGBO(175, 185, 193, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.grey, width: 1),
                ),
              ),
              margin: const EdgeInsets.only(left: 50),
              padding: const EdgeInsets.only(left: 50),
              alignment: Alignment.center,
              width: constraint.maxHeight <= 1024
                  ? media.width * 0.656
                  : media.width * 0.52,
              child: Column(
                children: [
                  child,
                  Container(
                    margin: const EdgeInsets.only(top: 30, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FlatButton(
                          color: Colors.grey,
                          child: Text('Prev'),
                          onPressed: () => prevHandler(),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        FlatButton(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            'Next',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () => nextHandler(step + 1),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
