import 'dart:math';
import 'dart:ui';

/// Random color generation function
Color generateRandomColor() {
  const maxColors = 256;
  final Random random = Random();

  return Color.fromRGBO(
    random.nextInt(maxColors),
    random.nextInt(maxColors),
    random.nextInt(maxColors),
    1,
  );
}
