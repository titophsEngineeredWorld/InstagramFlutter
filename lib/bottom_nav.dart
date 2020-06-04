import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBottomNav extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home, size: 20), title: Text('')),
      BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.search, size: 20), title: Text('')),
      BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.plusSquare, size: 20), title: Text('')),
      BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.heart, size: 20), title: Text('')),
      BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user, size: 20), title: Text('')),
    ].toList(),
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colors.white,
    backgroundColor: Colors.black,
    type: BottomNavigationBarType.fixed,);
  }

}