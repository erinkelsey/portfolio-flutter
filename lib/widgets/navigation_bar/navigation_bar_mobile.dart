import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget for the mobile navigation bar.
class NavigationBarMobile extends StatelessWidget {
  NavigationBarMobile({
    this.height = 60,
  });

  /// Current height of screen.
  final double height;

  @override
  Widget build(BuildContext context) {
    final scrollController = context.watch<ScrollController>();
    final atTopPage = scrollController.offset <= 200;
    return Container(
      height: height,
      width: double.infinity,
      color: !atTopPage ? Theme.of(context).primaryColor : null,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Image.asset(
              !atTopPage
                  ? 'assets/images/panda_logo_white.png'
                  : 'assets/images/panda_logo.png',
              height: 30),
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
