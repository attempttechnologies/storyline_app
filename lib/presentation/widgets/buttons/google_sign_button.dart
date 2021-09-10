import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/widgets/buttons/base_button.dart';

class GoogleSignInButton extends BaseButton {
  GoogleSignInButton({required onPressed, required String imagePath})
      : super(
          onPressed: onPressed,
          child: Image.asset(imagePath),
          color: Colors.grey[300],
        );
}
