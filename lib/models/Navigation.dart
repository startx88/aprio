import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/contact/contact_screen.dart';
import '../screens/dashboard_screen.dart';

class Navigation {
  final String title;
  final IconData icon;
  final String route;

  Navigation({@required this.title, @required this.icon, this.route});
}

List<Navigation> menuItems = [
  Navigation(title: 'Boardroom', icon: Icons.person, route: ''),
  Navigation(
      title: 'Dashboard', icon: Icons.home, route: DashboardScreen.routeName),
  Navigation(title: 'Settings', icon: Icons.build, route: ''),
  Navigation(title: 'Actions', icon: Icons.description, route: ''),
  Navigation(title: 'discussions', icon: Icons.question_answer, route: ''),
  Navigation(title: 'Library', icon: Icons.work, route: ''),
  Navigation(title: 'Events', icon: Icons.calendar_today, route: ''),
  Navigation(
      title: 'Contacts',
      icon: Icons.account_circle,
      route: ContactScreen.routeName),
  Navigation(title: 'Groups', icon: Icons.group, route: ''),
  Navigation(title: 'Polls / Surveys', icon: FontAwesomeIcons.poll, route: ''),
  Navigation(title: 'Expenses', icon: Icons.credit_card, route: ''),
  Navigation(title: 'Goals', icon: Icons.trip_origin, route: ''),
];

List<Navigation> supportItem = [
  Navigation(title: 'Need Help?', icon: Icons.help_outline, route: ''),
  Navigation(title: 'Contact Us', icon: Icons.person, route: ''),
];

List<Navigation> settingsItem = [
  Navigation(
      title: 'Account Settings', icon: Icons.settings_applications, route: ''),
  Navigation(title: 'Dark Mode', icon: Icons.brightness_2, route: ''),
  Navigation(title: 'Logout ', icon: Icons.lock, route: ''),
];
