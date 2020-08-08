import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './views/portfolio/portfolio_view.dart';

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
