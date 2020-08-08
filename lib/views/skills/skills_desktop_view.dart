import 'package:flutter/material.dart';

import '../../models/skill_item.dart';
import '../../widgets/skills/skills_item_body.dart';

/// Widget for the showing each [SkillItem] built as [SkillsItemBody]
/// widget in desktop view.
class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.8,
      // height: height * 0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Skills',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 20),
          for (var j = 0; j < skillItems.length / 4; j++) ...[
            Row(
              children: [
                for (var i = 0; i < skillItems.length / 2; i++)
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: i != 0 ? 8 : 0),
                      child: SkillsItemBody(
                        i: i,
                        j: j,
                        isMobile: false,
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 10),
          ],
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
