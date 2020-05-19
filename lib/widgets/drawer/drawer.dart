import 'package:aprio/widgets/drawer/DrawerLinkItem.dart';
import 'package:aprio/widgets/drawer/DrawerLinkText.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Drawers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            kIsWeb
                ? Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                  )
                : UserAccountsDrawerHeader(
                    currentAccountPicture: GestureDetector(
                      onTap: () {
                        print('hello');
                      },
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                    accountName: Text('Aprio Boardroom'),
                    accountEmail: Text('aprio@info.com'),
                  ),
            Divider(
              indent: 20.0,
              endIndent: 20.0,
              height: 2,
              thickness: 2.0,
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
            drawerLinkItem(
              context,
              Icon(
                Icons.person,
                color: Theme.of(context).iconTheme.color,
              ),
              DrawerText('Boardroom'),
              () => {},
            ),
            drawerLinkItem(
              context,
              Icon(
                Icons.home,
                color: Theme.of(context).iconTheme.color,
              ),
              DrawerText('Dashboard'),
              () => {},
            ),
            drawerLinkItem(
              context,
              FaIcon(
                FontAwesomeIcons.wrench,
                size: 20,
                color: Theme.of(context).iconTheme.color,
              ),
              DrawerText('Settings'),
              () => {},
            ),
            drawerLinkItem(
              context,
              Icon(
                Icons.description,
                color: Theme.of(context).iconTheme.color,
              ),
              DrawerText('Actions'),
              () => {},
            ),
            drawerLinkItem(
              context,
              FaIcon(
                FontAwesomeIcons.comments,
                size: 20,
                color: Theme.of(context).iconTheme.color,
              ),
              DrawerText('discussions'),
              () => {},
            ),
            drawerLinkItem(
              context,
              Icon(
                Icons.work,
                color: Theme.of(context).iconTheme.color,
              ),
              DrawerText('Library'),
              () => {},
            ),
            drawerLinkItem(
              context,
              Icon(
                Icons.calendar_today,
                color: Theme.of(context).iconTheme.color,
              ),
              DrawerText('Events'),
              () => {},
            ),
            drawerLinkItem(
              context,
              Icon(
                Icons.account_circle,
                color: Theme.of(context).iconTheme.color,
              ),
              DrawerText('Contacts'),
              () => {},
            ),
            drawerLinkItem(
              context,
              Icon(
                Icons.group,
                color: Theme.of(context).iconTheme.color,
              ),
              DrawerText('Groups'),
              () => {},
            ),
            drawerLinkItem(
              context,
              FaIcon(
                FontAwesomeIcons.poll,
                size: 20,
                color: Theme.of(context).iconTheme.color,
              ),
              DrawerText('Polls / Surveys'),
              () => {},
            ),
            drawerLinkItem(
              context,
              Icon(
                Icons.credit_card,
                color: Theme.of(context).iconTheme.color,
              ),
              DrawerText('Expenses'),
              () => {},
            ),
            drawerLinkItem(
              context,
              Image(
                image: AssetImage('assets/images/goal-icon.png'),
              ),
              DrawerText('Goals'),
              () => {},
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              child: Text(
                "SUPPORT",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: Theme.of(context).textTheme.bodyText2.fontSize,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            drawerLinkItem(
              context,
              Image(
                image: AssetImage('assets/images/goal-icon.png'),
              ),
              DrawerText('Need Help?'),
              () => {},
            ),
            drawerLinkItem(
              context,
              Image(
                image: AssetImage('assets/images/goal-icon.png'),
              ),
              DrawerText('Contact Us'),
              () => {},
            ),
          ],
        ),
      ),
    );
  }
}
