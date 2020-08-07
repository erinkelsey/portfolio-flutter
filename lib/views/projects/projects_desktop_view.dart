import 'package:flutter/material.dart';

import '../../models/project_item.dart';
import '../../widgets/projects/projects_item_body.dart';

class ProjectsDesktopView extends StatelessWidget {
  const ProjectsDesktopView({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
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
              for (final item in kProjectItems)
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
