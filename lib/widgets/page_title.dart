import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color.fromRGBO(220, 223, 231, 1), width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Contact',
            style: Theme.of(context).textTheme.headline3,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Last login'),
              SizedBox(
                height: 5,
              ),
              Text(DateFormat.yMMMEd('en_US')
                  .add_jm()
                  .format(DateTime.now())
                  .toString()),
            ],
          )
        ],
      ),
    );
  }
}
