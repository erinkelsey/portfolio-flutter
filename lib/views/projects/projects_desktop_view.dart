import 'package:flutter/material.dart';

import '../../models/project_item.dart';
import '../../widgets/projects/projects_item_body.dart';

/// Widget for the showing each [ProjectItem] built as [ProjectsItemBody]
/// widget in desktop view.
///
/// Must pass in current screen size [height] and [width].
class ProjectsDesktopView extends StatelessWidget {
  const ProjectsDesktopView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: width < 1100 ? height * 1.25 : height,
      width: width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Projects',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              for (final item in projectItems)
                Expanded(
                  child: ProjectsItemBody(item: item, height: height),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
