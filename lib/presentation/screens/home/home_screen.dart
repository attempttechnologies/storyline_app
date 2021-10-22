import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/configs/responsive_size.dart';
import 'package:storyline_app/presentation/screens/story/story.dart';
import 'package:storyline_app/presentation/screens/home/widgets/story_card.dart';
import 'package:storyline_app/presentation/widgets/text/main_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: [
          _topMargin(context),
          StoryCard(
            onTap: () => _navTo(context),
          ),
          StoryCard(),
          StoryCard(),
          StoryCard(),
          StoryCard(),
        ],
      ),
    );
  }

  Future<dynamic> _navTo(BuildContext context) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return Story();
        },
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      leading: SizedBox(),
      centerTitle: true,
      title: MainTitle(title: "Storyline"),
      backgroundColor: Colors.greenAccent,
    );
  }

  SizedBox _topMargin(BuildContext context) {
    return SizedBox(
      height: RepsonsiveSize.height(
        context: context,
        percentageHeight: 4.0,
      ),
    );
  }
}
