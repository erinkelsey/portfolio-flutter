import 'package:flutter/material.dart';

import '../../models/skill_item.dart';

/// Widget for the displaying an individual [SkillItem].
class SkillsItemBody extends StatelessWidget {
  const SkillsItemBody({
    Key key,
    this.i,
    @required this.j,
    @required this.isMobile,
  }) : super(key: key);

  /// The y-axis in [SkillItem] 2d array.
  final int i;

  /// The x-axis in [SkillItem] 2d array.
  final int j;

  /// [isMobile] is true if the screen width is mobile, else false.
  final bool isMobile;

  /// Gets the index for the current item.
  ///
  /// If [isMobile] is true, then just return index, as items are in a row.
  /// If [isMobile] is false, then return i * 2 + j.
  int _getIndex() {
    if (isMobile)
      return j;
    else
      return i * 2 + j;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isMobile ? double.infinity : null,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: kSkillItems[_getIndex()].color,
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        kSkillItems[_getIndex()].text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
