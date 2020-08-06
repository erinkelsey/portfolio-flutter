import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import './header_mobile_view.dart';
import './header_desktop_view.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (ctx, size) {
        if (size.isMobile)
          return HeaderMobileView(height: height, width: width);
        return HeaderDesktopView(height: height, width: width);
      },
    );
  }
}
