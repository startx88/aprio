import 'package:aprio/models/contact_stepper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomStepper extends StatefulWidget {
  final Function handler;
  final int currentStep;
  CustomStepper({this.currentStep, this.handler});
  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? Container(
            child: Text('Web'),
          )
        : Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 0.50,
                  spreadRadius: 0.90, // soften the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    0.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: contactMobileList.map((e) {
                var count = contactMobileList.indexOf(e) + 1;
                return Flexible(
                  fit: FlexFit.tight,
                  child: FittedBox(
                    child: FlatButton(
                      color: widget.currentStep == count
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      onPressed: () => widget.handler(count),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: CircleAvatar(
                              backgroundColor: Color.fromRGBO(0, 155, 208, 1),
                              child: Text(
                                count.toString(),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            e.title.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: widget.currentStep == count
                                  ? Colors.white
                                  : Color.fromRGBO(175, 185, 193, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          );
  }
}
