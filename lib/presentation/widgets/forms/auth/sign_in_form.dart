import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/screens/email_sign_up_screen.dart';
import 'package:storyline_app/presentation/widgets/buttons/email_signin_button.dart';
import 'package:storyline_app/presentation/widgets/forms/auth/auth_form.dart';
import 'package:storyline_app/presentation/widgets/forms/custom_text_form_field.dart';
import 'package:storyline_app/presentation/widgets/text/main_title.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthForm(
      title: MainTitle(title: "Sign In"),
      emailTextFormField: CustomTextFormField(
              labelText: "Email",
              hintText: "example@email.com",
            ),
      passwordTextFormField: CustomTextFormField(
              labelText: "Password",
              hintText: "At least 6 characters long",
            ),
      signInButton: EmailSignInButton(
        
              onPressed: () {},
              text: "Sign In",
            ),
      toggleTo: _toSignUp(context),
    );
  }

  GestureDetector _toSignUp(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _toSignUpNavigator(context);
      },
      child: _toSignUpText(),
    );
  }

  Future<dynamic> _toSignUpNavigator(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return EmailSignUpScreen();
        },
      ),
    );
  }

  Text _toSignUpText() {
    return Text(
      "Don't have an account?",
      style: _toSignUpTextStyle(),
    );
  }

  TextStyle _toSignUpTextStyle() {
    return TextStyle(
      decoration: TextDecoration.underline,
    );
  }
}
