import 'package:flutter/cupertino.dart';

class Contact with ChangeNotifier {
  final String id;
  final String name;
  final String username;
  final String email;
  final String address;
  final String phone;
  final String website;
  final String company;
  Contact({
    @required this.id,
    @required this.name,
    @required this.username,
    @required this.email,
    @required this.address,
    @required this.phone,
    @required this.website,
    @required this.company,
  });
}
