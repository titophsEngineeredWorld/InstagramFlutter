import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_flutter/circle_image.dart';

import 'data.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        FeedElement(DataInstagram.posts[0].imgUrl, DataInstagram.posts[0].des),
        FeedElement(DataInstagram.posts[1].imgUrl, DataInstagram.posts[1].des),
        FeedElement(DataInstagram.posts[2].imgUrl, DataInstagram.posts[2].des),
      ],
    );
  }
}

class FeedElement extends StatelessWidget {
  String _imgUrl;
  String _desc;

  FeedElement(this._imgUrl, this._desc);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400.0,
      color: Colors.black,
      child: Column(
        children: <Widget>[
          //User infos
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleImage(
                        DataInstagram.profileImages[0], 30.0, false, false)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('titoph_official',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0)),
                      Text('National Park',
                          style: TextStyle(color: Colors.grey, fontSize: 12.0)),
                    ],
                  ),
                ),
                SizedBox(
                  width: 242.0,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(FontAwesomeIcons.ellipsisH,
                      color: Colors.white, size: 20.0),
                ),
              ],
            ),
          ),
          //Picture
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 250.0,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(_imgUrl)),
            ),
          ),
          //Actions + desc
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.solidHeart,
                          color: Colors.red, size: 20.0),
                      SizedBox(width: 8.0),
                      Icon(FontAwesomeIcons.comment,
                          color: Colors.white, size: 20.0),
                      SizedBox(width: 8.0),
                      Icon(FontAwesomeIcons.locationArrow,
                          color: Colors.white, size: 20.0),
                      SizedBox(width: 292.0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(FontAwesomeIcons.bookmark,
                            color: Colors.white, size: 20.0),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(12.0, 8.0, 16.0, 8.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 14.0, color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(text: 'Liked by'),
                            TextSpan(
                                text: ' titoph_official',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' and'),
                            TextSpan(
                                text: ' 600 others.',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )),
                ),
                 Padding(
                  padding: EdgeInsets.fromLTRB(12.0, 0.0, 16.0, 0.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 14.0, color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'titoph_official',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' ' + _desc),
                            TextSpan(
                                text: '#nature #flutter # engineering',
                                style: TextStyle(color: Colors.blue)),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
