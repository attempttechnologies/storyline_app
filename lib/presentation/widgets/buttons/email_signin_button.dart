import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/widgets/buttons/base_button.dart';

class EmailSignInButton extends BaseButton {
  EmailSignInButton({
    required void Function() onPressed,
    required String text,
  }) : super(
          onPressed: onPressed,
          child: Text(text),
        );
}
