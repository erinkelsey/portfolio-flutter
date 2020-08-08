import 'package:flutter/material.dart';

/// Class for skill item details.
class SkillItem {
  /// The name of this skill.
  final String text;

  /// The color for the border around the skill item.
  final Color color;

  SkillItem(this.text, this.color);
}

final skillItems = [
  SkillItem('Eating', Colors.red),
  SkillItem('Climbing', Colors.blue),
  SkillItem('Sleeping', Colors.green),
  SkillItem('Walking', Colors.yellow),
  SkillItem('Cute', Colors.red),
  SkillItem('Playing', Colors.blue),
  SkillItem('Tumbling', Colors.green),
  SkillItem('Grooming', Colors.yellow),
];
