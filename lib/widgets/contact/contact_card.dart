import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 8.0),
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 0.50,
            spreadRadius: .90, // soften the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              0.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.green),
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: FlatButton(
                        child: FaIcon(
                          FontAwesomeIcons.userShield,
                          color: Colors.grey,
                          size: 16,
                        ),
                        padding: new EdgeInsets.all(0.0),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: FlatButton(
                        hoverColor: Colors.blue,
                        child: FaIcon(
                          FontAwesomeIcons.userLock,
                          size: 16,
                          color: Colors.grey,
                        ),
                        padding: new EdgeInsets.all(0.0),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Aman Kalra',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: FlatButton(
                        padding: const EdgeInsets.all(0.0),
                        child: FaIcon(
                          FontAwesomeIcons.addressCard,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Rsystems',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Text('Executive Assistant'),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.mail,
                      size: 18,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text('meredith.blumenstock@gmail.com'),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 18,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text('(210) 626 62626'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
