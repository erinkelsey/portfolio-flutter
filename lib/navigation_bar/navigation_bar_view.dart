import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBarView extends StatelessWidget {
  NavigationBarView({
    this.height = 60,
    @required this.width,
    @required this.atTopPage,
  });

  final double height;
  final double width;
  final bool atTopPage;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (ctx, size) {
        return Container(
          height: height,
          width: width,
          color: !atTopPage ? Theme.of(context).primaryColor : null,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: <Widget>[
              FlutterLogo(),
              Spacer(),
              Text(
                'About',
                style: TextStyle(
                  fontSize: 15,
                  color: !atTopPage ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
