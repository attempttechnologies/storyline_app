import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/widgets/forms/auth/sign_in_form.dart';
import 'package:storyline_app/presentation/widgets/forms/auth/sign_up_form.dart';

class ToggleForm extends StatelessWidget {
  const ToggleForm({required this.signInForm, required this.signUpForm});

  final SignInForm signInForm;
  final SignUpForm signUpForm;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(""),
    );
  }
}
