import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';

/// Widget for showing header details.
class HeaderBody extends StatelessWidget {
  final bool isMobile;
  const HeaderBody({
    Key key,
    @required this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'I am a Panda',
          style: Theme.of(context).textTheme.headline3,
          maxLines: 1,
        ),
        AutoSizeText(
          'Bear < 🐼 >',
          style: Theme.of(context).textTheme.headline3,
          maxLines: 1,
        ),
        SizedBox(height: isMobile ? 20 : 37),
        AutoSizeText(
          'I have many years of experience in the bamboo eating industry.',
          style: TextStyle(fontSize: 18),
          maxLines: 2,
        ),
        SizedBox(height: isMobile ? 20 : 37),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          color: Theme.of(context).primaryColor,
          onPressed: () => launch(
              'mailto:panda.thebear@fakeemail.com?subject=Contact%20Panda'),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: isMobile ? 8 : 14,
              horizontal: isMobile ? 5 : 10,
            ),
            child: Text(
              'Contact Me',
              style: TextStyle(
                fontSize: isMobile ? 14 : 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
