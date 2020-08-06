import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import './navigation_bar_item.dart';
import '../../models/navigation_item.dart';

class NavigationBar extends StatelessWidget {
  NavigationBar({
    this.height = 60,
    @required this.width,
    @required this.atTopPage,
  });

  final double height;
  final double width;
  final bool atTopPage;

  final navigationItems = [
    NavigationItem(text: 'Projects'),
    NavigationItem(text: 'Skills'),
    NavigationItem(text: 'About'),
    NavigationItem(text: 'Blog'),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (ctx, size) {
        return Container(
          height: height,
          width: width,
          color: !atTopPage ? Theme.of(context).primaryColor : null,
          padding: EdgeInsets.symmetric(horizontal: size.isMobile ? 8 : 20),
          child: Row(
            children: <Widget>[
              FlutterLogo(),
              Spacer(),
              for (var item in navigationItems)
                NavigationBarItem(
                  atTopPage: atTopPage,
                  buttonText: item.text,
                  onPressedHandler: () {},
                ),
            ],
          ),
        );
      },
    );
  }
}
