import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/social_item.dart';
// import '../../widgets/footer/hover_extension.dart';

class FooterMobileView extends StatelessWidget {
  final currentYear = DateTime.now().year;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.9,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for (final social in socialItems)
                IconButton(
                  icon: social.icon,
                  onPressed: () {
                    launch(social.url);
                  },
                  color: Theme.of(context).primaryColor,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Panda: The Bear © $currentYear',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              IconButton(
                icon: gitHubSocialItem.icon,
                onPressed: () {
                  launch(gitHubSocialItem.url);
                },
                color: Theme.of(context).primaryColor,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
              )
            ],
          ),
        ],
      ),
    );
  }
}
