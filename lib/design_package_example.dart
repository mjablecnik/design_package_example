library design_package;

import 'package:design_package_example/design/design.theme.dart';
import 'package:design_package_example/theme/dark_mode.dart';
import 'package:design_package_example/theme/light_mode.dart';
import 'package:flutter/material.dart';

export 'primitives/colors.dart';
export 'primitives/text_styles.dart';

class DesignPackageTheme {
  static final ThemeData light = lightTheme;
  static final ThemeData dark = darkTheme;
}

class DesignPackageThemeExtension {
  static final DesignTheme light = lightDesignThemeExtension;
  static final DesignTheme dark = darkDesignThemeExtension;
}
