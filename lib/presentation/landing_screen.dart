import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/configs/responsive_size.dart';
import 'package:storyline_app/presentation/widgets/buttons/email_signin_button.dart';
import 'package:storyline_app/presentation/widgets/buttons/google_sign_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EmailSignInButton(
          onPressed: _onPressed,
          text: "Sign in with email",
        ),
        _sizedBox(context),
        GoogleSignInButton(
          onPressed: _onPressed,
          imagePath: "assets/images/icons8-google-48.png",
        ),
      ],
    );
  }

  SizedBox _sizedBox(BuildContext context) {
    return SizedBox(
        height: RepsonsiveSize.height(
          context: context,
          percentageHeight: 2.0,
        ),
      );
  }

  _onPressed() {
    print("Hello World");
  }
}
