import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  NavigationBarItem({
    @required this.buttonText,
    @required this.onPressedHandler,
    @required this.atTopPage,
  });

  final String buttonText;
  final Function onPressedHandler;
  final bool atTopPage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: FlatButton(
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: !atTopPage ? Colors.white : Colors.black,
          ),
        ),
        onPressed: onPressedHandler,
      ),
    );
  }
}
