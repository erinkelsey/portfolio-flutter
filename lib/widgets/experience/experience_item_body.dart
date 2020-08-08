import 'package:flutter/material.dart';

import '../../models/experience_item.dart';

/// Widget for showing [ExperienceItem] details.
class ExperienceItemBody extends StatelessWidget {
  const ExperienceItemBody({
    Key key,
    this.experienceItem,
  }) : super(key: key);

  final ExperienceItem experienceItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: experienceItem.color,
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            experienceItem.company,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 5),
          Text(
            experienceItem.timeline,
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: Colors.grey,
                ),
          ),
          SizedBox(height: 5),
          for (final item in experienceItem.descriptions)
            Text(
              item,
              style: Theme.of(context).textTheme.bodyText1,
            ),
        ],
      ),
    );
  }
}
