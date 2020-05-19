import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './screens/dashboard_screen.dart';

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
            bodyText2:
                kIsWeb ? TextStyle(fontSize: 12) : TextStyle(fontSize: 14),
            headline1:
                kIsWeb ? TextStyle(fontSize: 28) : TextStyle(fontSize: 22),
            headline2:
                kIsWeb ? TextStyle(fontSize: 24) : TextStyle(fontSize: 20),
            headline3:
                kIsWeb ? TextStyle(fontSize: 22) : TextStyle(fontSize: 18),
            headline4:
                kIsWeb ? TextStyle(fontSize: 20) : TextStyle(fontSize: 16),
            headline5:
                kIsWeb ? TextStyle(fontSize: 18) : TextStyle(fontSize: 14),
            headline6:
                kIsWeb ? TextStyle(fontSize: 16) : TextStyle(fontSize: 14),
          ),
          accentColor: Color.fromRGBO(0, 84, 136, 1)),
      home: DashboardScreen(),
    );
  }
}
