import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as mt;
import 'package:flutter/painting.dart';
import 'package:design_package_example/primitives/text_styles.dart';
import 'package:design_package_example/design/buttons/buttons_style.dart';
import 'package:design_package_example/primitives/colors.dart';
import 'package:design_package_example/design/buttons/simple_button/simple_button_style.dart';
import 'package:design_package_example/design/design_theme.dart';

get darkTheme {
  return mt.ThemeData(
    brightness: Brightness.dark,
    extensions: [darkDesignThemeExtension],
  );
}

final darkDesignThemeExtension = DesignTheme(
  buttonsStyle: ButtonsStyle(
    simpleButtonStyle: SimpleButtonStyle(
      defaultColor: DesignColors.purple,
      textStyle: TextStyles.mediumNormalText.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: DesignColors.whiteish,
      ),
    ),
  ),
);
