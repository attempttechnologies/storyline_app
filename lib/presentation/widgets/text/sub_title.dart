import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/configs/responsive_size.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({required this.subTitle});
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: _textStyle(context),
    );
  }

  TextStyle _textStyle(BuildContext context) => TextStyle(
        fontSize: RepsonsiveSize.width(
          context: context,
          percentageWidth: 3.0,
        ),
      );
}
