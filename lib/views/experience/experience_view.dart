import 'package:flutter/material.dart';

import '../main_view_builder.dart';
import './experience_desktop_view.dart';
import './experience_mobile_view.dart';

/// Widget for the showing all [ExperienceItem]s in desktop view or mobile view.
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
