import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:provider/provider.dart';

import '../../models/navigation_item.dart';

/// Main drawer for the page.
///
/// Only used for screens that are mobile size.
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationItems = context.watch<List<NavigationItem>>();
    final scrollController = context.watch<ScrollController>();
    return ResponsiveBuilder(
      builder: (_, size) {
        if (!size.isMobile) return null;
        return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        'Panda: The Bear',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                      color: Colors.white,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).accentColor,
                      Theme.of(context).primaryColor,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [1, 0],
                  ),
                ),
              ),
              for (var item in navigationItems)
                ListTile(
                  title: Text(
                    item.text,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  onTap: () {
                    // close drawer
                    Navigator.pop(context);

                    // go to element
                    scrollController.animateTo(
                      scrollController.offset + item.position - 80,
                      duration: Duration(milliseconds: 700),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}
