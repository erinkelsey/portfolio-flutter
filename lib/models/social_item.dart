import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Object to hold social media info.
class SocialItem {
  /// The [FontAwesomeIcon] for a specific social media site.
  final Widget icon;

  /// The url to the social media site.
  final String url;

  SocialItem({
    @required this.icon,
    @required this.url,
  });
}

/// Social item for project source code.
final gitHubSocialItem = SocialItem(
  icon: FaIcon(FontAwesomeIcons.github),
  url: 'https://github.com/erinkelsey/portfolio-flutter',
);

/// Social item placeholders for all the major social media companies.
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
