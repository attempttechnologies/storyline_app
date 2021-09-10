import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/configs/responsive_size.dart';

/// Buttons will inherit default stylings from base button
class BaseButton extends StatelessWidget {
  const BaseButton({required this.onPressed, this.child, this.color});

  final void Function() onPressed;
  final Widget? child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: _containerMargin(context),
        right: _containerMargin(context),
      ),
      width: double.infinity,
      child: _elevatedButton(),
    );
  }

  double _containerMargin(BuildContext context) {
    return RepsonsiveSize.width(
      context: context,
      percentageWidth: 5.0,
    );
  }

  ElevatedButton _elevatedButton() {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: _buttonStyle(),
    );
  }

  ButtonStyle _buttonStyle() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color?>(color),
    );
  }
}
