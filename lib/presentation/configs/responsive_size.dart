import 'package:flutter/material.dart';

/// Create responsive size for widgets by using percentages instead fixed pixels
class RepsonsiveSize {
  RepsonsiveSize._();

  static MediaQueryData _mediaQuery(BuildContext context) {
    return MediaQuery.of(context);
  }

  static double width({
    required BuildContext context,
    required double percentageWidth,
  }) {
    final double horizontalBlocks = _mediaQuery(context).size.width / 100;
    final double percentage = horizontalBlocks * percentageWidth;
    return percentage;
  }

  static double height({
    required BuildContext context,
    required double percentageHeight,
  }) {
    final double verticalBlocks = _mediaQuery(context).size.height / 100;
    final double percentage = verticalBlocks * percentageHeight;
    return percentage;
  }
}
