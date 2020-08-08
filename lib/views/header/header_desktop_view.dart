import 'package:flutter/material.dart';

import '../../widgets/header/header_body.dart';

/// Widget for the showing [HeaderBody] in desktop view.
class HeaderDesktopView extends StatelessWidget {
  const HeaderDesktopView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width * 0.8,
      child: Row(
        // Use Flex instead of row
        // change from row to column if mobile
        // direction: !size.isMobile ? Axis.horizontal : Axis.vertical,
        children: [
          Expanded(
            child: HeaderBody(
              isMobile: false,
            ),
          ),
          Image.asset(
            'assets/images/panda_header.png',
            fit: BoxFit.contain,
            width: width * 0.4,
          ),
        ],
      ),
    );
  }
}
