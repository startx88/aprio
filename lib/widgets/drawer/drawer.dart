import 'package:flutter/material.dart';
import 'package:aprio/widgets/drawer/LinkItem.dart';
import '../../models/Navigation.dart';

class Drawers extends StatefulWidget {
  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> with TickerProviderStateMixin {
  double maxWidth = 300.0;
  double minWidth = 60;
  bool isCollapse = false;
  AnimationController _animationController;
  Animation<double> withAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(microseconds: 3000));

    withAnimation = Tween<double>(begin: maxWidth, end: minWidth)
        .animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Color.fromRGBO(0, 0, 0, 0.8), BlendMode.luminosity),
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://img.freepik.com/free-vector/abstract-colorful-flow-shapes-background_23-2148258092.jpg?size=626&ext=jpg'),
                ),
              ),
              currentAccountPicture: GestureDetector(
                onTap: () {
                  //print('hello');
                },
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/images/logo.png'),
                ),
              ),
              accountName: Text('Aprio Boardroom'),
              accountEmail: Text('aprio@info.com'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              child: Text(
                "MENU",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: Theme.of(context).textTheme.bodyText2.fontSize,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            ...menuItems
                .map(
                  (item) => LinkItem(
                    icon: item.icon,
                    title: item.title,
                    pressed: () =>
                        Navigator.of(context).pushReplacementNamed(item.route),
                    animationController: _animationController,
                  ),
                )
                .toList(),
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, left: 20, right: 20, bottom: 15),
              child: Text(
                "SUPPORT",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: Theme.of(context).textTheme.bodyText2.fontSize,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            ...supportItem
                .map(
                  (item) => LinkItem(
                    icon: item.icon,
                    title: item.title,
                    pressed: () =>
                        Navigator.of(context).pushReplacementNamed(item.route),
                    animationController: _animationController,
                  ),
                )
                .toList(),
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, left: 20, right: 20, bottom: 15),
              child: Text(
                "SETTINGS",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: Theme.of(context).textTheme.bodyText2.fontSize,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            ...settingsItem
                .map(
                  (item) => LinkItem(
                    icon: item.icon,
                    title: item.title,
                    pressed: () =>
                        Navigator.of(context).pushReplacementNamed(item.route),
                    animationController: _animationController,
                  ),
                )
                .toList(),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.white10,
              indent: 20.0,
              endIndent: 20.0,
              height: 1,
              thickness: 1,
            ),
            Align(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'Version 1.0.0',
                    style: TextStyle(
                        color: Colors.white30, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'copyright - ${DateTime.now()}',
                    style: TextStyle(
                        color: Colors.white30, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
