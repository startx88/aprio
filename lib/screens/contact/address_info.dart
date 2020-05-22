import 'package:aprio/common/panel/panel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AddressInformation extends StatelessWidget {
  final Function next;
  final Function prev;

  AddressInformation({this.next, this.prev});
  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? Container()
        : Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Panel(
                  panelTitle: 'Home Address',
                  panelAction: Container(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Street',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'City',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'State / Province',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Zip / Postal code',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Country / Region',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Panel(
                  panelTitle: 'Work Address',
                  panelAction: Container(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Street',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'City',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'State / Province',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Zip / Postal code',
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Country / Region',
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
                ),
              ],
            ),
          );
  }
}
