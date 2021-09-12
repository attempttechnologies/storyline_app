import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/configs/responsive_size.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: _textStyle(context),
    );
  }

  TextStyle _textStyle(BuildContext context) => TextStyle(
        fontSize: RepsonsiveSize.width(
          context: context,
          percentageWidth: 10.0,
        ),
      );
}
