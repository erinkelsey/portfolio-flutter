import 'package:flutter/foundation.dart';

class ProjectItem {
  final String image;
  final String title;
  final String description;
  final List<String> technologies;

  ProjectItem({
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.technologies,
  });
}

final kProjectItems = [
  ProjectItem(
    image: 'images/panda_projects1.png',
    title: 'Kung Fu Black Belt',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    technologies: [
      'Kung Fu',
      'Black Belt',
      'Martial Arts',
    ],
  ),
  ProjectItem(
    image: 'images/panda_projects2.png',
    title: 'Wayward Adventurer',
    description:
        'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    technologies: [
      'Safari',
      'Binoculars',
      'Compass Pin',
    ],
  ),
  ProjectItem(
    image: 'images/panda_projects3.png',
    title: 'Flying Deliverer',
    description:
        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
    technologies: [
      'Hero Cape',
      'Ball Cap',
      'Parcel',
    ],
  ),
];
