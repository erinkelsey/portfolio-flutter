import 'package:flutter/material.dart';

import '../../models/experience_item.dart';
import '../../widgets/experience/experience_item_body.dart';

class ExperienceMobileView extends StatelessWidget {
  const ExperienceMobileView({
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
            'Experience',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (var i = 0; i < experienceItems.length; i++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: ExperienceItemBody(
                    experienceItem: experienceItems[i],
                  ),
                ),
            ],
          ),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}
