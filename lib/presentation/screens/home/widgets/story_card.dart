import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/configs/responsive_size.dart';
import 'package:storyline_app/presentation/widgets/text/main_title.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: _containerMargin(context),
        child: Card(
          shape: _cardShape(context),
          elevation: 2.0,
          child: Container(
            margin: _textMargin(context),
            child: Column(
              children: [
                MainTitle(title: "Short Story Title"),
                _sizedBox(context),
                Text(
                  """Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.""",
                ),
                _sizedBox(context),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Published: 10/21/2021"),
                    Text("Rating: *****"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _sizedBox(BuildContext context) {
    return SizedBox(
      height: RepsonsiveSize.height(
        context: context,
        percentageHeight: 5.0,
      ),
    );
  }

  EdgeInsets _containerMargin(BuildContext context) {
    return EdgeInsets.only(
      left: RepsonsiveSize.width(
        context: context,
        percentageWidth: 5.0,
      ),
      right: RepsonsiveSize.width(
        context: context,
        percentageWidth: 5.0,
      ),
    );
  }

  EdgeInsets _textMargin(BuildContext context) {
    return EdgeInsets.all(
      RepsonsiveSize.width(
        context: context,
        percentageWidth: 5.0,
      ),
    );
  }

  RoundedRectangleBorder _cardShape(BuildContext context) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        RepsonsiveSize.width(
          context: context,
          percentageWidth: 5.0,
        ),
      ),
    );
  }
}
