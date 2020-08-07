import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import './skills_desktop_view.dart';
import './skills_mobile_view.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        // if (size.screenSize.width < 790)
        if (size.isMobile)
          return SkillsMobileView(height: height, width: width);
        return SkillsDesktopView(height: height, width: width);
      },
    );
  }
}
