import 'package:design_package_example/storybook.dart';
import 'package:storybook_toolkit/storybook_toolkit.dart';
import 'package:storybook_toolkit_tester/storybook_toolkit_tester.dart';

void main() => testStorybook(
  storybook(),
  devices: {Device.iPhone8, Device.iPhone13, Device.pixel5, Device.iPadPro},
  rootPath: "../lib/design",
  filterStories: (Story story) {
    final skipStories = [];
    return !skipStories.contains(story.name);
  },
);
