import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../models/project_item.dart';

class ProjectsItemBody extends StatelessWidget {
  const ProjectsItemBody({
    Key key,
    @required this.item,
    @required this.height,
  }) : super(key: key);

  final ProjectItem item;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        return Padding(
          padding: EdgeInsets.symmetric(
              vertical: 20, horizontal: !size.isMobile ? 8 : 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset(
                  item.image,
                  height: height * 0.5,
                ),
              ),
              SizedBox(height: 15),
              Text(
                item.title,
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 10),
              Text(
                item.description,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 10),
              Wrap(
                children: <Widget>[
                  for (final techName in item.technologies)
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Chip(
                        label: Text(techName),
                      ),
                    ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
