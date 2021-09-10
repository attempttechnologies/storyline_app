import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/widgets/base_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BaseButton(
          onPressed: _onPressed,
          child: Text("Sign In"),
        ),
      ],
    );
  }

  _onPressed() {
    print("Hello World");
  }
}
