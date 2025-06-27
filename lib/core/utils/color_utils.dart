import 'dart:ui';


/// Function for a detect dark colors
bool isDark(Color color) {
  const minBrightness = 0.5;
  final brightness = color.computeLuminance();

  return brightness < minBrightness;
}

/// Function for generating hex color code from a color
String colorToHex(
  Color color, {
  bool hashSign = true,
  bool withAlpha = false,
}) {
  final a = (color.a * 255).toInt().toRadixString(16).padLeft(2, '0');
  final r = (color.r * 255).toInt().toRadixString(16).padLeft(2, '0');
  final g = (color.g * 255).toInt().toRadixString(16).padLeft(2, '0');
  final b = (color.b * 255).toInt().toRadixString(16).padLeft(2, '0');

  return '${hashSign ? '#' : ''}${withAlpha ? a : ''}$r$g$b'.toUpperCase();
}
