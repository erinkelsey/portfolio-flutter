import 'package:flutter/material.dart';

class NavigationBarMobile extends StatelessWidget {
  NavigationBarMobile({
    this.height = 60,
    @required this.atTopPage,
  });

  final double height;
  final bool atTopPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      color: !atTopPage ? Theme.of(context).primaryColor : null,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Text(
            '🐼',
            style: TextStyle(fontSize: 26),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
            color: !atTopPage ? Colors.white : Colors.black,
          ),
        ],
      ),
    );
  }
}
