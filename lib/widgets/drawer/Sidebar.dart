import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:aprio/widgets/drawer/LinkItem.dart';
import '../../models/Navigation.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> with SingleTickerProviderStateMixin {
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
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, widget) => getWidget(context, widget),
    );
  }

  Widget getWidget(context, widget) {
    return SingleChildScrollView(
      child: Container(
        width: withAnimation.value,
        child: Material(
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: withAnimation.value,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
              ),
              if (kIsWeb)
                Divider(
                  indent: 20.0,
                  endIndent: 20.0,
                  height: 2,
                  thickness: 2.0,
                ),
              if (withAnimation.value == 300)
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20),
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
                      pressed: () => Navigator.of(context)
                          .pushReplacementNamed(item.route),
                      animationController: _animationController,
                    ),
                  )
                  .toList(),
              if (withAnimation.value == 300)
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
                      pressed: () => Navigator.of(context)
                          .pushReplacementNamed(item.route),
                      animationController: _animationController,
                    ),
                  )
                  .toList(),
              if (withAnimation.value == 300)
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
                      pressed: () => Navigator.of(context)
                          .pushReplacementNamed(item.route),
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
              if (withAnimation.value == 300)
                Align(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          'Version 1.0.0',
                          style: TextStyle(
                              color: Colors.white30,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'copyright - ${DateTime.now()}',
                          style: TextStyle(
                              color: Colors.white30,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ),
              Align(
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      isCollapse = !isCollapse;
                      isCollapse
                          ? _animationController.forward()
                          : _animationController.reverse();
                    });
                  },
                  icon: Icon(Icons.chevron_left),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
