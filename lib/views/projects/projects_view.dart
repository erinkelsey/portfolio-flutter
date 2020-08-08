import 'package:flutter/material.dart';

import '../main_view_builder.dart';
import './projects_desktop_view.dart';
import './projects_mobile_view.dart';

/// Widget for the showing all [ProjectItem]s in desktop view or mobile view.
class ProjectsView extends StatelessWidget {
  const ProjectsView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainViewBuilder(
      mobileView: ProjectsMobileView(),
      desktopView: ProjectsDesktopView(),
    );
  }
}
