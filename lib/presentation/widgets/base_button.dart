import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/configs/responsive_size.dart';

/// Buttons will inherit default stylings from base button
class BaseButton extends StatelessWidget {
  const BaseButton({
    required this.onPressed,
    this.child,
    this.color,
    this.width: 90.0,
    this.height: 8.0,
  });

  final void Function() onPressed;
  final Widget? child;
  final Color? color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return _elevatedButton(context);
  }

  ElevatedButton _elevatedButton(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: _buttonStyle(context),
    );
  }

  ButtonStyle _buttonStyle(BuildContext context) {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color?>(color),
      minimumSize: MaterialStateProperty.all<Size?>(
        _buttonSize(context),
      ),
    );
  }

  Size _buttonSize(BuildContext context) {
    return Size(
      RepsonsiveSize.width(
        context: context,
        percentageWidth: width,
      ),
      RepsonsiveSize.height(
        context: context,
        percentageHeight: height,
      ),
    );
  }
}
