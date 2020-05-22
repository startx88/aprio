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

List<ContactStepper> contactMobileList = [
  ContactStepper(title: 'Personal\nInfo', color: Colors.blue),
  ContactStepper(title: 'Address\nInfo', color: Colors.blue),
  ContactStepper(title: 'Contact\nInfo', color: Colors.blue),
  ContactStepper(title: 'Bio &\nSignature', color: Colors.blue),
];
