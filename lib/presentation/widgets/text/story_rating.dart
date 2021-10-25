import 'package:flutter/material.dart';

class StoryRating extends StatelessWidget {
  const StoryRating({this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            color: Colors.grey,
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
