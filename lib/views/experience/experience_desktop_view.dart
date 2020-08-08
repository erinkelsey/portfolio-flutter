import 'package:flutter/material.dart';
import 'package:portfolio_web/models/experience_item.dart';

import '../../widgets/experience/experience_item_body.dart';

/// Widget for the showing all [ExperienceItem]s in desktop view.
class ExperienceDesktopView extends StatelessWidget {
  const ExperienceDesktopView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Experience',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var i = 0; i < experienceItems.length / 2; i++)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      for (var j = 0; j < experienceItems.length / 2; j++)
                        Padding(
                          padding: EdgeInsets.only(
                            left: i != 0 ? 8 : 0,
                            bottom: 8,
                          ),
                          child: ExperienceItemBody(
                            experienceItem: experienceItems[i * 2 + j],
                          ),
                        ),
                    ],
                  ),
                ),
            ],
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
