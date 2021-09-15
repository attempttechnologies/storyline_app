import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/widgets/buttons/email_signin_button.dart';
import 'package:storyline_app/presentation/widgets/forms/auth/auth_form.dart';
import 'package:storyline_app/presentation/widgets/forms/custom_text_form_field.dart';
import 'package:storyline_app/presentation/widgets/text/main_title.dart';

class SignUpForm extends StatelessWidget {
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
      ),
      signInButton: EmailSignInButton(
        onPressed: () {},
        text: "Sign Up",
      ),
      toggleTo: GestureDetector(
        child: _toSignInText(),
        onTap: () {
          _toSignIn(context);
        },
      ),
    );
  }

  dynamic _toSignIn(BuildContext context) {
    return Navigator.pop(context);
  }

  Text _toSignInText() {
    return Text(
      "Already have an account?",
      style: _toSignUpTextStyle(),
    );
  }

  TextStyle _toSignUpTextStyle() {
    return TextStyle(
      decoration: TextDecoration.underline,
    );
  }
}
