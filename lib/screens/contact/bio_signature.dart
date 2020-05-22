import 'package:aprio/common/panel/panel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BioAndSignature extends StatelessWidget {
  final Function submit;
  final Function prev;
  BioAndSignature({this.submit, this.prev});

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? Container()
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Panel(
              panelTitle: "Bio & Signature",
              panelAction: Container(),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Bio"),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          maxLines: 5,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        const Text("Email"),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          maxLines: 5,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
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
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () => submit(),
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
