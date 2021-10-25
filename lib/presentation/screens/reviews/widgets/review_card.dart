import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/configs/responsive_size.dart';
import 'package:storyline_app/presentation/screens/reviews/widgets/review.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: _cardMargin(context),
      elevation: 0.5,
      shape: _cardShape(context),
      child: Container(
        margin: _textMargin(context),
        child: Review(),
      ),
    );
  }

  EdgeInsets _textMargin(BuildContext context) {
    return EdgeInsets.all(
      RepsonsiveSize.width(
        context: context,
        percentageWidth: 2.0,
      ),
    );
  }

  EdgeInsets _cardMargin(BuildContext context) {
    return EdgeInsets.all(
      RepsonsiveSize.width(
        context: context,
        percentageWidth: 2.5,
      ),
    );
  }

  RoundedRectangleBorder _cardShape(BuildContext context) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        RepsonsiveSize.width(
          context: context,
          percentageWidth: 2.0,
        ),
      ),
    );
  }
}
