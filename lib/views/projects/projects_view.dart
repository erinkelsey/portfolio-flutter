import 'package:flutter/material.dart';

import '../main_view_builder.dart';
import './projects_desktop_view.dart';
import './projects_mobile_view.dart';

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
