import 'package:flutter/material.dart';

class LinkItem extends StatefulWidget {
  final String title;
  final IconData icon;
  final Function pressed;
  final AnimationController animationController;

  LinkItem({
    @required this.title,
    @required this.icon,
    @required this.pressed,
    this.animationController,
  });

  @override
  _LinkItemState createState() => _LinkItemState();
}

class _LinkItemState extends State<LinkItem> {
  Animation<double> widthAnimation, sizedBoxAnimation;

  @override
  void initState() {
    super.initState();
    widthAnimation =
        Tween<double>(begin: 300, end: 60).animate(widget.animationController);
    sizedBoxAnimation =
        Tween<double>(begin: 10, end: 0).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.white10,
      hoverColor: Colors.white10,
      onTap: widget.pressed,
      child: Container(
        width: widthAnimation.value,
        child: widthAnimation.value == 300
            ? ListTile(
                leading: Icon(
                  widget.icon,
                  color: Colors.white,
                ),
                title: Text(
                  widget.title,
                  style: TextStyle(color: Colors.white),
                ),
              )
            : ListTile(
                leading: Icon(
                  widget.icon,
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
