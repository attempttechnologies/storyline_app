import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/configs/responsive_size.dart';
import 'package:storyline_app/presentation/screens/email_sign_in_screen.dart';
import 'package:storyline_app/presentation/widgets/buttons/email_signin_button.dart';
import 'package:storyline_app/presentation/widgets/buttons/google_sign_button.dart';
import 'package:storyline_app/presentation/widgets/text/main_title.dart';
import 'package:storyline_app/presentation/widgets/text/sub_title.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainTitle(title: "Story Line"),
            _sizedBox(context, percentageHeight: 2.0),
            SubTitle(subTitle: "Read Short Stories From Great Authors"),
             _sizedBox(context, percentageHeight: 5.0),
            EmailSignInButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => EmailSignInScreen(),
                  ),
                );
              },
              text: "Sign in with email",
            ),
            _sizedBox(context, percentageHeight: 2.0),
            GoogleSignInButton(
              onPressed: () {},
              text: "Sign in with Google",
              imagePath: "assets/images/icons8-google-48.png",
              imgWidth: RepsonsiveSize.width(
                context: context,
                percentageWidth: 6.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _sizedBox(BuildContext context, {required double percentageHeight}) {
    return SizedBox(
      height: RepsonsiveSize.height(
        context: context,
        percentageHeight: percentageHeight,
      ),
    );
  }
}
