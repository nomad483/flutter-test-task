import 'package:flutter/material.dart';
import 'package:flutter_test_task/core/utils/color_utils.dart';
import 'package:flutter_test_task/model/color_model.dart';

/// History color circe item
class ColorHistoryItem extends StatelessWidget {
  /// Current Color Model
  final ColorModel colorModel;

  /// Current Text Color
  final Color textColor;

  /// Constructor
  ColorHistoryItem({required this.colorModel})
    : textColor = isDark(colorModel.color) ? Colors.white : Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: colorModel.color,
        border: Border.all(),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(colorModel.hexCode, style: TextStyle(color: textColor)),
      ),
    );
  }
}
