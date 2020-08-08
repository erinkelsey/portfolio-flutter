import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Widget for the back to top [FloatingActionButton].
///
/// Displayed when the page is not at scrolled to top.
class BackToTopButton extends StatelessWidget {
  const BackToTopButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = context.watch<ScrollController>();
    if (scrollController.offset <= 200) return SizedBox();
    return FloatingActionButton(
      child: Icon(Icons.arrow_upward),
      backgroundColor: Theme.of(context).primaryColor,
      onPressed: () {
        scrollController.animateTo(0,
            duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
      },
    );
  }
}
