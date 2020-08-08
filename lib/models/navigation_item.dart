import 'package:flutter/material.dart';

/// Class for holding navigation bar item title.
class NavigationItem {
  /// The title of this navigation bar item.
  final String text;

  /// Unique global key for this navigation bar item.
  final GlobalKey key;

  NavigationItem({this.text, @required this.key});

  /// Getter for returning this item's current position in [ScrollController].
  double get position => _getPosition(key);

  /// Calculate this item's current position on page.
  double _getPosition(GlobalKey key) {
    final RenderBox renderBox = key.currentContext.findRenderObject();
    final position = renderBox.localToGlobal(Offset.zero);
    return position.dy;
  }
}
