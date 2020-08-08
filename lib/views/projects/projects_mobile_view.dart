import 'package:flutter/material.dart';

import '../../models/project_item.dart';
import '../../widgets/projects/projects_item_body.dart';

/// Widget for the showing each [ProjectItem] built as [ProjectsItemBody]
/// widget in mobile view.
///
/// Must pass in current screen size [height] and [width].
class ProjectsMobileView extends StatelessWidget {
  const ProjectsMobileView({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Projects',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 20),
          for (final item in projectItems)
            ProjectsItemBody(item: item, height: height),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
