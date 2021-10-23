import 'package:flutter/material.dart';

class StoryRating extends StatelessWidget {
  const StoryRating({this.onTap});
  final void Function()? onTap;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text("Rating: *****"),
      onTap: onTap,
    );
  }
}
