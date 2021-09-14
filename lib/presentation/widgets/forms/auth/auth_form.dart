import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/configs/responsive_size.dart';
import 'package:storyline_app/presentation/widgets/buttons/email_signin_button.dart';
import 'package:storyline_app/presentation/widgets/forms/custom_text_form_field.dart';
import 'package:storyline_app/presentation/widgets/text/main_title.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({
    required this.title,
    required this.emailTextFormField,
    required this.passwordTextFormField,
    required this.signInButton,
    required this.toggleTo,
  });

  final MainTitle title;
  final CustomTextFormField emailTextFormField;
  final CustomTextFormField passwordTextFormField;
  final EmailSignInButton signInButton;
  final GestureDetector toggleTo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: _formMargin(context),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            title,
            _sizedBox(context, percentageHeight: 5.0),
            emailTextFormField,
            _sizedBox(context, percentageHeight: 2.0),
            passwordTextFormField,
            _sizedBox(context, percentageHeight: 2.0),
            signInButton,
            _sizedBox(context, percentageHeight: 2.0),
            toggleTo,
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
