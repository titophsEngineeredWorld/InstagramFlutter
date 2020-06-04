import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_flutter/circle_image.dart';

import 'data.dart';

class StoriesPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 60.0,
            height: 60.0,
            child: Stack(
              children: <Widget>[
                CircleImage(DataInstagram.profileImages[0], 60.0, false, false),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    FontAwesomeIcons.plusCircle,
                    size: 15.0,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.0,),
          Container(
            width: 60.0,
            height: 60.0,
              padding: EdgeInsets.all(8.0),
              child: CircleImage(
                  DataInstagram.profileImages[1], 60.0, true, false)),
          SizedBox(width: 8.0,),
          Container(
            width: 60.0,
            height: 60.0,
              padding: EdgeInsets.all(8.0),
              child: CircleImage(
                  DataInstagram.profileImages[2], 60.0, true, false)),
          SizedBox(width: 8.0,),
          Container(
            width: 60.0,
            height: 60.0,
              padding: EdgeInsets.all(8.0),
              child: CircleImage(
                  DataInstagram.profileImages[3], 60.0, true, true)),
        ],
      ),
    );
  }
}
