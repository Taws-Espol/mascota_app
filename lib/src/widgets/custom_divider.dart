import 'package:flutter/material.dart';
import 'package:mascota_app/src/themes/color_theme.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 50,
      color: ColorTheme.PRIMARY,
    );
  }
}
