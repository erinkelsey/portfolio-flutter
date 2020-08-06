import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import './navigation_bar_desktop.dart';
import './navigation_bar_mobile.dart';

class NavigationBar extends StatelessWidget {
  NavigationBar({
    this.height = 60,
    @required this.atTopPage,
  });

  final double height;
  final bool atTopPage;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (ctx, size) {
        if (size.isMobile) {
          return NavigationBarMobile(
            atTopPage: atTopPage,
            height: height,
          );
        }
        return NavigationBarDesktop(
          atTopPage: atTopPage,
          height: height,
        );
      },
    );
  }
}
