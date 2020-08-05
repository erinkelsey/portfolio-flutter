import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './views/desktop/desktop_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Erin Kelsey',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.purple,
        textTheme: TextTheme(
          headline1: GoogleFonts.montserrat(fontSize: 40),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DesktopView(),
    );
  }
}
