import 'package:flutter/material.dart';

import '../../models/skill_item.dart';
import '../../widgets/skills/skills_item_body.dart';

class SkillsMobileView extends StatelessWidget {
  const SkillsMobileView({
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
            'Skills',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 20),
          for (var j = 0; j < kSkillItems.length; j++) ...[
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
