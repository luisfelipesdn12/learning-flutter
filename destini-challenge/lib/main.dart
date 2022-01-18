import 'dart:ui';

import 'package:destini_challenge_starting/components/button.dart';
import 'package:destini_challenge_starting/components/storyDisplayer.dart';
import 'package:destini_challenge_starting/story_brain.dart';
import 'package:flutter/material.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  StoryBrain storyBrain = StoryBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/pexels-bithin-raj-2763927.jpg'),
            fit: BoxFit.cover,
            opacity: 0.75,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 12,
                  child: Center(
                    child: StotyDisplayer(story: storyBrain.story),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Button(
                    text: storyBrain.choice1,
                    onPressed: () => setState(() {
                      storyBrain.nextStory(1);
                    }),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  flex: 2,
                  child: Button(
                    text: storyBrain.choice2,
                    type: ButtonType.secondary,
                    visible: !storyBrain.isFinithed,
                    onPressed: () => setState(() {
                      storyBrain.nextStory(2);
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
