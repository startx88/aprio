import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './screens/dashboard_screen.dart';
import './screens/contact/contact_screen.dart';
import './screens/contact/edit_contact_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apri boardroom',
      theme: ThemeData(
          primaryColor: Color.fromRGBO(0, 84, 136, 1),
          fontFamily: 'Roboto',
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: TextTheme(
            bodyText1: kIsWeb
                ? TextStyle(fontSize: 16, fontWeight: FontWeight.w300)
                : TextStyle(fontSize: 14),
            bodyText2: kIsWeb
                ? TextStyle(fontSize: 12, color: Colors.grey)
                : TextStyle(
                    fontSize: 13,
                    letterSpacing: 0.3,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
            headline1: kIsWeb
                ? TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )
                : TextStyle(fontSize: 22),
            headline2: kIsWeb
                ? TextStyle(fontSize: 24, color: Colors.black)
                : TextStyle(fontSize: 20, color: Colors.black),
            headline3: kIsWeb
                ? TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )
                : TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
            headline4:
                kIsWeb ? TextStyle(fontSize: 20) : TextStyle(fontSize: 16),
            headline5:
                kIsWeb ? TextStyle(fontSize: 18) : TextStyle(fontSize: 14),
            headline6: kIsWeb
                ? TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87)
                : TextStyle(fontSize: 14),
          ),
          accentColor: Color.fromRGBO(0, 84, 136, 1)),
      initialRoute: '/',
      routes: {
        DashboardScreen.routeName: (ctx) => DashboardScreen(),
        ContactScreen.routeName: (ctx) => ContactScreen(),
        EditContactScreen.routeName: (ctx) => EditContactScreen(),
      },
    );
  }
}
