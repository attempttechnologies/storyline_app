import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/widgets/buttons/base_button.dart';

class GoogleSignInButton extends BaseButton {
  GoogleSignInButton({
    required void Function() onPressed,
    required String imagePath,
    required String text,
    this.imgWidth,
    this.imgHeight,
  }) : super(
          onPressed: onPressed,
          child: _childContent(imagePath, imgWidth, imgHeight, text),
          color: Colors.grey[300],
        );

  final double? imgWidth;
  final double? imgHeight;

  static Row _childContent(
    String imagePath,
    double? imgWidth,
    double? imgHeight,
    String text,
  ) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _assetImage(imagePath, imgWidth, imgHeight),
        Text(text),
      ],
    );
  }

  static Image _assetImage(
    String imagePath,
    double? imgWidth,
    double? imgHeight,
  ) {
    return Image.asset(
      imagePath,
      width: imgWidth,
      height: imgHeight,
    );
  }
}
