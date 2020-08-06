import 'package:flutter/material.dart';

import '../../widgets/header/header_body.dart';

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
      height: height * 0.9,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          FlutterLogo(size: height * 0.3),
          Spacer(),
          HeaderBody(isMobile: true),
        ],
      ),
    );
  }
}
