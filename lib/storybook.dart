import 'package:flutter/material.dart';
import 'package:design_package_example/theme/dark_mode.dart';
import 'package:design_package_example/theme/light_mode.dart';
import 'package:design_package_example/design/buttons/simple_button/simple_button_stories.dart';
import 'package:storybook_toolkit/storybook_toolkit.dart';

Storybook storybook([List<Story>? stories]) {
  return Storybook(
    wrapperBuilder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: Scaffold(
          body: Center(
            child: child,
          ),
        ),
      );
    },
    plugins: initializePlugins(
      enableCodeView: false,
      enableDirectionality: false,
      enableTimeDilation: false,
    ),
    initialStory: stories?.first.name,
    stories: stories ??
        [
          ...simpleButtonStories,
          Story(
            name: 'Widgets/Text',
            description: 'Simple text widget.',
            builder: (context) => const Center(child: Text("Simple text")),
          ),
        ],
  );
}

void main() => runApp(storybook());
