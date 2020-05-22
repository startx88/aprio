import 'package:aprio/common/panel/panel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  final String firstname;
  final String lastname;
  final String organization;
  final String title;
  final Function next;
  final Function prev;

  PersonalInfo({
    this.firstname,
    this.lastname,
    this.organization,
    this.title,
    this.next,
    this.prev,
  });

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return kIsWeb
        ? Container()
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Panel(
              panelTitle: "Personal Information",
              panelAction: Container(),
              child: Container(
                child: Column(
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
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10.0),
                            height: 50,
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'First Name',
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.only(bottom: 10.0),
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                labelText: 'Last Name',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.only(bottom: 10.0),
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Organization',
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Title',
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                FlatButton(
                                  color: Theme.of(context).primaryColor,
                                  child: Text(
                                    'Next',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () => next(),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
