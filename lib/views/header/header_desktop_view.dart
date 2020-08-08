import 'package:flutter/material.dart';

import '../../widgets/header/header_body.dart';

class HeaderDesktopView extends StatelessWidget {
  const HeaderDesktopView({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
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
