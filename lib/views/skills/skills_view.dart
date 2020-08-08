import 'package:flutter/material.dart';

import '../main_view_builder.dart';
import './skills_desktop_view.dart';
import './skills_mobile_view.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainViewBuilder(
      mobileView: SkillsMobileView(),
      desktopView: SkillsDesktopView(),
    );
  }
}
