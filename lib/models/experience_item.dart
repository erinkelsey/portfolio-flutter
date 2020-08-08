import 'package:flutter/material.dart';

/// Class for holding experience items.
class ExperienceItem {
  /// Company for this experience item.
  final String company;

  /// The duration for this experience item.
  final String timeline;

  /// List of descriptions, describing this experience item.
  final List<String> descriptions;

  /// Color for the border for this experience item.
  final Color color;

  ExperienceItem({
    @required this.company,
    @required this.timeline,
    @required this.descriptions,
    @required this.color,
  });
}

final experienceItems = [
  ExperienceItem(
    company: 'Panda Training @ Panda Training School',
    timeline: 'September 2018 - September 2019 (12 months)',
    descriptions: [
      '- Cras facilisis condimentum ligula, at ultricies tortor egestas ut.',
      '- Etiam vulputate luctus lacinia. Nam vel justo viverra, vestibulum orci id, luctus tortor.',
      '- In at nisi vel libero mattis consectetur non ut erat.'
    ],
    color: Colors.red,
  ),
  ExperienceItem(
    company: 'Bamboo Eating Workshop @ Panda Training School',
    timeline: 'July 2019 - October 2019 (4 months)',
    descriptions: [
      '- Cras facilisis condimentum ligula, at ultricies tortor egestas ut.',
      '- Etiam vulputate luctus lacinia. Nam vel justo viverra, vestibulum orci id, luctus tortor.',
      '- In at nisi vel libero mattis consectetur non ut erat.'
    ],
    color: Colors.blue,
  ),
  ExperienceItem(
    company: 'Bamboo Picker @ Bamboozled Pickers',
    timeline: 'January 2020 - May 2020 (5 months)',
    descriptions: [
      '- Cras facilisis condimentum ligula, at ultricies tortor egestas ut.',
      '- Etiam vulputate luctus lacinia. Nam vel justo viverra, vestibulum orci id, luctus tortor.',
      '- In at nisi vel libero mattis consectetur non ut erat.'
    ],
    color: Colors.green,
  ),
  ExperienceItem(
    company: 'Senior Bamboo Picker @ Bamboozled Pickers',
    timeline: 'May 2020 - Present (5 months)',
    descriptions: [
      '- Cras facilisis condimentum ligula, at ultricies tortor egestas ut.',
      '- Etiam vulputate luctus lacinia. Nam vel justo viverra, vestibulum orci id, luctus tortor.',
      '- In at nisi vel libero mattis consectetur non ut erat.'
    ],
    color: Colors.yellow,
  ),
];
