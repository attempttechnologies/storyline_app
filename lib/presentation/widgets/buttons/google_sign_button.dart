import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/configs/responsive_size.dart';
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
          child: Row(
            children: [
              Image.asset(
                imagePath,
                width: imgWidth,
                height: imgHeight,
              ),
              Text(text),
            ],
          ),
          color: Colors.grey[300],
        );

  final double? imgWidth;
  final double? imgHeight;
}
