import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import './navigation_bar_desktop.dart';
import './navigation_bar_mobile.dart';

/// Main navigation bar widget.
///
/// Renders the [NavigationBarMobile] widget, if the screen is mobile, else
/// renders the [NavigationBarDesktop]
class NavigationBar extends StatelessWidget {
  NavigationBar({
    this.height = 60,
    @required this.atTopPage,
  });

  /// The height for this navigation bar.
  final double height;

  /// If the user is currently at the top of the page.
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
