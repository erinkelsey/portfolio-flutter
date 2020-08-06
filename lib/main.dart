import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sticky_headers/sticky_headers.dart';

import './views/header/header_view.dart';
import './widgets/navigation_bar/navigation_bar.dart';
import './widgets/drawer/main_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Panda: The Bear - Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.purple,
        textTheme: TextTheme(
          headline1: GoogleFonts.montserrat(fontSize: 40),
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
  ScrollController _scrollController;
  bool _atTopPage;

  void _scrollListener() {
    if (_scrollController.offset <= 350) {
      setState(() {
        _atTopPage = true;
      });
    } else {
      setState(() {
        _atTopPage = false;
      });
    }
  }

  @override
  void initState() {
    _atTopPage = true;
    _scrollController = ScrollController();
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
              HeaderView(height: height, width: width),
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
