import 'package:aprio/common/panel/panel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ContactInformation extends StatelessWidget {
  final Function next;
  final Function prev;

  ContactInformation({this.next, this.prev});

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? Container()
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Panel(
              panelTitle: "Contact Information",
              panelAction: Container(),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Work Phone',
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mobile Phone',
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Home Phone',
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
                        labelText: 'Work Fax',
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Alternative Email',
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.url,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Wep page address',
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
                          color: Colors.grey,
                          child: Text('Prev'),
                          onPressed: () => prev(),
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
                          onPressed: () => next(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
