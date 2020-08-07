import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainViewBuilder extends StatelessWidget {
  const MainViewBuilder({
    Key key,
    @required this.mobileView,
    @required this.desktopView,
  }) : super(key: key);

  final Widget mobileView;
  final Widget desktopView;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.isMobile) return mobileView;
        return desktopView;
      },
    );
  }
}
