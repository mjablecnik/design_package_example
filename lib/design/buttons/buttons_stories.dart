import 'package:flutter/widgets.dart';
import 'package:design_package_example/storybook.dart';

import 'simple_button/simple_button_stories.dart';

final buttonsStories = [
  ...simpleButtonStories,
];

void main() => runApp(storybook(buttonsStories));
