import 'package:flutter/material.dart';

/// Widget for building an individual [NavigationItem].
///
/// Required to pass in the text for the item [buttonText], whether the user
/// is currently at the top of the page [atTopPage], and the callback function
/// when a user presses the item [onPressedHandler].
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
