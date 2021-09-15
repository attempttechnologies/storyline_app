import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/widgets/forms/auth/sign_up_form.dart';

class EmailSignUpScreen extends StatelessWidget {
  const EmailSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: SignUpForm(),
      ),
    );
  }
}
