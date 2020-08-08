import 'package:flutter/material.dart';

import '../../widgets/header/header_body.dart';

/// Widget for the showing [HeaderBody] in mobile view.
class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.95,
      width: width * 0.9,
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/panda_header.png',
              fit: BoxFit.contain,
              width: width * 0.7,
              height: 0.4,
            ),
          ),
          SizedBox(height: 30),
          HeaderBody(isMobile: true),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
