import 'dart:ui';

import 'package:flutter_test_task/core/utils/color_utils.dart';

/// Color model structure for a unit color
class ColorModel {
  /// Current color
  final Color color;

  /// Hex code for a current color
  final String hexCode;

  /// Constructor
  ColorModel(this.color) : hexCode = colorToHex(color);
}
