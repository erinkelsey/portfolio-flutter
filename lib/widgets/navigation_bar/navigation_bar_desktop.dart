import 'package:flutter/material.dart';

import './navigation_bar_item.dart';
import '../../models/navigation_item.dart';

class NavigationBarDesktop extends StatelessWidget {
  NavigationBarDesktop({
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
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          Image.asset(
              !atTopPage
                  ? 'images/panda_logo_white.png'
                  : 'images/panda_logo.png',
              height: 30),
          Spacer(),
          for (var item in kNavigationItems)
            NavigationBarItem(
              atTopPage: atTopPage,
              buttonText: item.text,
              onPressedHandler: () {},
            ),
        ],
      ),
    );
  }
}
