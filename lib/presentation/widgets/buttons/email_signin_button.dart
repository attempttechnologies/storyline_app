import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/widgets/buttons/base_button.dart';

class EmailSignInButton extends BaseButton {
  EmailSignInButton({
    required void Function() onPressed,
    required String text,
    Color color: Colors.greenAccent,
  }) : super(
          onPressed: onPressed,
          child: Text(text),
          color: color,
        );
}
