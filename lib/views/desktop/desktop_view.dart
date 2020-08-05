import 'package:flutter/material.dart';

class DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.8,
              width: width * 0.8,
              color: Colors.red,
              child: Row(
                children: [
                  Text('I am a Software'),
                  Text('Engineer < / >'),
                  Text(
                    'I have over 5 years of experience in the tech industry.',
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Contact Me'),
                  ),
                ],
              ),
            ),
            Container(height: 864, width: 1507, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
