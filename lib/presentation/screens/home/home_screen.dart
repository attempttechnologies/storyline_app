import 'package:flutter/material.dart';
import 'package:storyline_app/presentation/configs/responsive_size.dart';
import 'package:storyline_app/presentation/screens/reviews/review_screen.dart';
import 'package:storyline_app/presentation/screens/story/story.dart';
import 'package:storyline_app/presentation/screens/home/widgets/story_card.dart';
import 'package:storyline_app/presentation/widgets/text/main_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      drawer: _drawer(context),
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

  Drawer _drawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: Text("Item One"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Item One"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Item One"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Item One"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
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
