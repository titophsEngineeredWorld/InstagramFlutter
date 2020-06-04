import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: TabBar(
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(icon: Icon(FontAwesomeIcons.camera, size: 20.0,),),
            Tab(icon: Text('Instagram', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),),
            Tab(icon: Icon(FontAwesomeIcons.locationArrow, size: 20.0,),),
          ],
        ));
  }
}
