import 'package:flutter/material.dart';

import '../main_view_builder.dart';
import './footer_desktop_view.dart';
import './footer_mobile_view.dart';

/// Widget for the showing the footer section in desktop view or mobile view.
class FooterView extends StatelessWidget {
  const FooterView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainViewBuilder(
      mobileView: FooterMobileView(),
      desktopView: FooterDesktopView(),
    );
  }
}
