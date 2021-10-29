import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/screens/landing_screen.dart';

class Storyline extends StatelessWidget {
  const Storyline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingScreen(),
    );
  }
}
