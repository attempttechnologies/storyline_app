import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/configs/responsive_size.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    this.labelText,
    this.hintText,
    this.suffixIcon,
    this.errorText,
  });
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: _inputDecoration(context),
    );
  }

  InputDecoration _inputDecoration(BuildContext context) => InputDecoration(
        labelText: labelText,
        hintText: hintText,
        suffixIcon: suffixIcon,
        errorText: errorText,
        border: _outlineInputborder(context),
      );

  OutlineInputBorder _outlineInputborder(BuildContext context) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            RepsonsiveSize.height(
              context: context,
              percentageHeight: 5.0,
            ),
          ),
        ),
      );
  }
}
