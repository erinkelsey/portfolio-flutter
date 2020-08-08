import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import './navigation_bar_desktop.dart';
import './navigation_bar_mobile.dart';

/// Main navigation bar widget.
///
/// Renders the [NavigationBarMobile] widget, if the screen is mobile, else
/// renders the [NavigationBarDesktop].
class NavigationBar extends StatelessWidget {
  NavigationBar({
    this.height = 60,
  });

  /// The height for this navigation bar.
  final double height;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (ctx, size) {
        if (size.isMobile) {
          return NavigationBarMobile(
            height: height,
          );
        }
        return NavigationBarDesktop(
          height: height,
        );
      },
    );
  }
}
