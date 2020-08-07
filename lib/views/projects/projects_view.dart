import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import './projects_mobile_view.dart';
import './projects_desktop_view.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({
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
        if (size.isMobile)
          return ProjectsMobileView(height: height, width: width);
        return ProjectsDesktopView(height: height, width: width);
      },
    );
  }
}
