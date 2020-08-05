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
              height: height,
              width: width * 0.8,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'I am a Software',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'Engineer < / >',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(height: 40),
                      Text(
                        'I have over 5 years of experience in the tech industry.',
                      ),
                      SizedBox(height: 40),
                      FlatButton(
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Text('Contact Me'),
                      ),
                    ],
                  ),
                  FlutterLogo(size: 300),
                ],
              ),
            ),
            Container(
                height: 864,
                width: 1507,
                color: Theme.of(context).primaryColor),
          ],
        ),
      ),
    );
  }
}
