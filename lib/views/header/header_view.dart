import 'package:flutter/material.dart';

import '../main_view_builder.dart';
import './header_desktop_view.dart';
import './header_mobile_view.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainViewBuilder(
      mobileView: HeaderMobileView(),
      desktopView: HeaderDesktopView(),
    );
  }
}
