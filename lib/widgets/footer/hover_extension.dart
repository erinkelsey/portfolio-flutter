import 'package:flutter/material.dart';

import './elevate_on_hover.dart';

/// Extension on any [Widget] that can be used to
/// animate on hover.
extension HoverExtension on Widget {
  Widget get elevateUpOnHover {
    return ElevateOnHover(child: this);
  }
}
