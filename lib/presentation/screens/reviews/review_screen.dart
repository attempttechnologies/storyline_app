import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/screens/reviews/widgets/review_card.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ReviewCard(),
          ReviewCard(),
          ReviewCard(),
          ReviewCard(),
          ReviewCard(),
          ReviewCard(),
          ReviewCard(),
        ],
      ),
    );
  }
}