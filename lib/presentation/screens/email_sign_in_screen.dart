import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/widgets/forms/auth/sign_in_form.dart';

class EmailSignInScreen extends StatelessWidget {
  const EmailSignInScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: SignInForm(),
      ),
    );
  }
}
