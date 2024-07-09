import 'package:flutter/material.dart';
import 'package:design_package_example/design/buttons/simple_button/simple_button_style.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'buttons_style.tailor.dart';

@TailorMixin()
class ButtonsStyle extends ThemeExtension<ButtonsStyle> with _$ButtonsStyleTailorMixin {
  const ButtonsStyle({
    required this.simpleButtonStyle,
  });

  @override
  @themeExtension
  final SimpleButtonStyle simpleButtonStyle;
}
