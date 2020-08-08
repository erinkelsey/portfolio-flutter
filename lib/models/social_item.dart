import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialItem {
  final Widget icon;
  final String url;

  SocialItem({
    @required this.icon,
    @required this.url,
  });
}

final gitHubSocialItem = SocialItem(
  icon: FaIcon(FontAwesomeIcons.github),
  url: 'https://github.com/erinkelsey/portfolio-flutter',
);

final socialItems = [
  SocialItem(
    icon: FaIcon(FontAwesomeIcons.facebook),
    url: 'https://www.facebook.com',
  ),
  SocialItem(
    icon: FaIcon(FontAwesomeIcons.instagram),
    url: 'https://www.instagram.com',
  ),
  SocialItem(
    icon: FaIcon(FontAwesomeIcons.twitter),
    url: 'https://twitter.com',
  ),
  SocialItem(
    icon: FaIcon(FontAwesomeIcons.linkedin),
    url: 'https://www.linkedin.com',
  ),
];
