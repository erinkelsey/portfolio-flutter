import 'package:flutter/material.dart';

import '../../models/skill_item.dart';
import '../../widgets/skills/skills_item_body.dart';

/// Widget for the showing each [SkillItem] built as [SkillsItemBody]
/// widget in mobile view.
class SkillsMobileView extends StatelessWidget {
  const SkillsMobileView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Skills',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 20),
          for (var j = 0; j < skillItems.length; j++) ...[
            SkillsItemBody(
              j: j,
              isMobile: true,
            ),
            SizedBox(height: 15),
          ],
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
