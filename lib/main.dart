import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sticky_headers/sticky_headers.dart';

import './widgets/navigation_bar/navigation_bar.dart';
import './widgets/drawer/main_drawer.dart';
import './views/main_view_builder.dart';
import './views/header/header_view.dart';
import './views/projects/projects_view.dart';
import './views/skills/skills_view.dart';
import './views/experience/experience_view.dart';

void main() {
  runApp(MyApp());
}

/// Main widget for website.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Panda: The Bear',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.purple,
        textTheme: TextTheme(
          headline3: GoogleFonts.montserrat(),
          headline4: GoogleFonts.montserrat(),
          headline5: GoogleFonts.montserrat(),
          headline6: GoogleFonts.montserrat(),
          bodyText1: GoogleFonts.montserrat(),
          button: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PortfolioView(),
    );
  }
}

class PortfolioView extends StatefulWidget {
  @override
  _PortfolioViewState createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  /// [ScrollController] for tracking the page position.
  ScrollController _scrollController;

  /// Boolean for tracking if the page position is at the
  /// top of the page.
  bool _atTopPage;

  /// Sets the [_atTopPage] variable to true if the offset
  /// of the [_scrollConroller] is less than 200 (at the top
  /// of the page), else set it to false.
  void _scrollListener() {
    if (_scrollController.offset <= 200) {
      setState(() {
        _atTopPage = true;
      });
    } else {
      setState(() {
        _atTopPage = false;
      });
    }
  }

  _getPositions(GlobalKey key) {
    final RenderBox renderBox1 = key.currentContext.findRenderObject();
    final positionRed = renderBox1.localToGlobal(Offset.zero);
    print('POSTION of element: $positionRed');
  }

  /// Initialize the [ScrollController] for the [SingleChildScrollView]
  /// to get access to page position in the scroll view.
  @override
  void initState() {
    _atTopPage = true;
    _scrollController = ScrollController(
        // initialScrollOffset: 2000,
        );
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      endDrawer: MainDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: StickyHeader(
          header: NavigationBar(
            height: height * 0.075,
            atTopPage: _atTopPage,
          ),
          content: Column(
            children: [
              HeaderView(),
              ProjectsView(),
              SkillsView(),
              ExperienceView(),
              Container(
                  height: height,
                  width: width,
                  color: Theme.of(context).primaryColor),
            ],
          ),
        ),
      ),
    );
  }
}
