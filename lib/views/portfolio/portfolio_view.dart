import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:after_layout/after_layout.dart';
import 'package:provider/provider.dart';

import '../../widgets/navigation_bar/navigation_bar.dart';
import '../../widgets/drawer/main_drawer.dart';
import '../../widgets/portfolio/back_to_top_button.dart';
import '../../views/header/header_view.dart';
import '../../views/projects/projects_view.dart';
import '../../views/skills/skills_view.dart';
import '../../views/experience/experience_view.dart';
import '../../models/navigation_item.dart';

/// Widget for the main portfolio page view.
class PortfolioView extends StatefulWidget {
  @override
  _PortfolioViewState createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> with AfterLayoutMixin {
  /// [ScrollController] for tracking the page position.
  ScrollController _scrollController;

  /// Unique global key for [ProjectsView]
  final projectsKey = GlobalKey();

  /// Unique global key for [SkillsView]
  final skillsKey = GlobalKey();

  /// Unique global key for [ExperienceView]
  final experienceKey = GlobalKey();

  /// List of [NavigationItem]s that make up the navigation bar and drawer.
  List<NavigationItem> navigationItems = [];

  /// Initialize the [ScrollController] for the [SingleChildScrollView]
  /// to get access to page position in the scroll view.
  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  /// Create the [navigationItems] list with all [NavigationItem] objects for
  /// this app, with the name of each secion, and a unique [GlobalKey] for them.
  @override
  void afterFirstLayout(BuildContext context) {
    setState(() {
      navigationItems = [
        NavigationItem(text: 'Projects', key: projectsKey),
        NavigationItem(text: 'Skills', key: skillsKey),
        NavigationItem(text: 'Experience', key: experienceKey),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return MultiProvider(
      providers: [
        // update data in widget tree
        ProxyProvider0<List<NavigationItem>>(update: (_, __) {
          return navigationItems;
        }),
        ChangeNotifierProvider<ScrollController>(
          create: (_) {
            return _scrollController;
          },
        ),
      ],
      child: Scaffold(
        endDrawer: MainDrawer(),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: StickyHeader(
            header: NavigationBar(
              height: height * 0.075,
            ),
            content: Column(
              children: [
                HeaderView(),
                ProjectsView(key: projectsKey),
                SkillsView(key: skillsKey),
                ExperienceView(key: experienceKey),
                Container(
                    height: height,
                    width: width,
                    color: Theme.of(context).primaryColor),
              ],
            ),
          ),
        ),
        floatingActionButton: BackToTopButton(),
      ),
    );
  }
}
