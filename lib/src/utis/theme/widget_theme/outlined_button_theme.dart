import 'package:flutter/material.dart';

import '../../../constants/color_manager.dart';
import '../../../constants/size.dart';

class POutlinedButtonTheme {
  POutlinedButtonTheme();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: cSecondaryColor,
      side: const BorderSide(color: cSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: pButtonHeight),
    ),
  );

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: Colors.white,
      side: const BorderSide(color: cWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: pButtonHeight),
    ),
  );
}
