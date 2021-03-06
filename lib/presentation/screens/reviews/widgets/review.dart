import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/widgets/text/story_rating.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("John Doe"),
            StoryRating(),
          ],
        ),
        Divider(
          thickness: 0.5,
        ),
        Text(
          """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""",
        ),
         Divider(
          thickness: 0.5,
        ),
        Text("Reviewed: 10/21/2021")
      ],
    );
  }
}
