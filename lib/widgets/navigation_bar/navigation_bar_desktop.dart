import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './navigation_bar_item.dart';
import '../../models/navigation_item.dart';

/// Widget for the desktop navigation bar.
class NavigationBarDesktop extends StatelessWidget {
  NavigationBarDesktop({
    this.height = 60,
  });

  /// Current height of screen.
  final double height;

  @override
  Widget build(BuildContext context) {
    final navigationItems = context.watch<List<NavigationItem>>();
    final scrollController = context.watch<ScrollController>();
    final atTopPage = scrollController.offset <= 200;
    return Container(
      height: height,
      width: double.infinity,
      color: !atTopPage ? Theme.of(context).primaryColor : null,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          Image.asset(
              !atTopPage
                  ? 'assets/images/panda_logo_white.png'
                  : 'assets/images/panda_logo.png',
              height: 30),
          Spacer(),
          for (var item in navigationItems)
            NavigationBarItem(
              atTopPage: atTopPage,
              buttonText: item.text,
              onPressedHandler: () {
                scrollController.animateTo(
                  scrollController.offset + item.position - 100,
                  duration: Duration(milliseconds: 700),
                  curve: Curves.easeInOut,
                );
              },
            ),
        ],
      ),
    );
  }
}
