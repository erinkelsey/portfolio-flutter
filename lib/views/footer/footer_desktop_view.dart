import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/social_item.dart';
import '../../widgets/footer/hover_extension.dart';

class FooterDesktopView extends StatelessWidget {
  final currentYear = DateTime.now().year;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.8,
      height: 100,
      child: Row(
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
          ).elevateUpOnHover,
          Spacer(),
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
            ).elevateUpOnHover,
          SizedBox(width: 30),
        ],
      ),
    );
  }
}
