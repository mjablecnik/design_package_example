import 'package:flutter/material.dart';
import 'package:design_package_example/design/design_theme.dart';

import 'simple_button_style.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    super.key,
    required this.text,
    this.onTap,
    this.style,
  });

  final String text;
  final GestureTapCallback? onTap;
  final SimpleButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    final currentStyle = style ?? context.designTheme.buttonsStyle.simpleButtonStyle;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentStyle.defaultColor,
        ),
        child: Center(
          child: Text(text, style: currentStyle.textStyle),
        ),
      ),
    );
  }
}
