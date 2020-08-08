import 'package:flutter/material.dart';

import '../../widgets/header/header_body.dart';

/// Widget for the showing [HeaderBody] in mobile view.
///
/// Must pass in current screen size [height] and [width].
class HeaderMobileView extends StatelessWidget {
  const HeaderMobileView({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
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
