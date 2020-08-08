import 'package:flutter/material.dart';

import '../main_view_builder.dart';
import './experience_desktop_view.dart';
import './experience_mobile_view.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainViewBuilder(
      mobileView: ExperienceMobileView(),
      desktopView: ExperienceDesktopView(),
    );
  }
}
