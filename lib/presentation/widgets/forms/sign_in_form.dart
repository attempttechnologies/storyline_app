import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/configs/responsive_size.dart';
import 'package:storyline_app/presentation/widgets/buttons/email_signin_button.dart';
import 'package:storyline_app/presentation/widgets/forms/custom_text_form_field.dart';
import 'package:storyline_app/presentation/widgets/text/main_title.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        margin: _formMargin(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainTitle(title: "Sign In"),
            _sizedBox(context, percentageHeight: 5.0),
            CustomTextFormField(
              labelText: "Email",
              hintText: "example@email.com",
            ),
            _sizedBox(context, percentageHeight: 2.0),
            CustomTextFormField(
              labelText: "Password",
              hintText: "At least 6 characters long",
            ),
            _sizedBox(context, percentageHeight: 2.0),
            EmailSignInButton(
              onPressed: () {},
              text: "Sign In",
            ),
          ],
        ),
      ),
    );
  }

  EdgeInsets _formMargin(BuildContext context) {
    return EdgeInsets.only(
      left: RepsonsiveSize.width(
        context: context,
        percentageWidth: 5.0,
      ),
      right: RepsonsiveSize.width(
        context: context,
        percentageWidth: 5.0,
      ),
    );
  }

  SizedBox _sizedBox(
    BuildContext context, {
    required double percentageHeight,
  }) {
    return SizedBox(
      height: RepsonsiveSize.height(
        context: context,
        percentageHeight: percentageHeight,
      ),
    );
  }
}
