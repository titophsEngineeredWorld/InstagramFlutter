import 'package:flutter/material.dart';
import 'package:instagram_flutter/bottom_nav.dart';
import 'package:instagram_flutter/feed.dart';
import 'package:instagram_flutter/stories_placeholder.dart';
import 'package:instagram_flutter/top_tabs.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

          //TopBar
          Container(
            height: 60.0,
            color: Colors.black,
            child: TopTabs(),
          ),

          //Stories
          Container(
            height: 80.0,
            color: Colors.black,
            child: StoriesPlaceholder(),
          ),

          //Middle feed
          Expanded(child: Container(
            color: Colors.black,
            child: Feed(),
          )),

          //BottomNav
          Container(
            height: 60.0,
            child: AppBottomNav(),
          ),
        ],
      ),
    );
  }

}