import 'package:flutter/material.dart';
import 'settings_widget.dart';
import 'calendar_widget.dart';
import 'dashboard_widget.dart';

class Homenav extends StatefulWidget {
  @override
  _HomenavState createState() => _HomenavState();
}

class _HomenavState extends State<Homenav> {
  int _currentIndex = 0;
  final List<Widget> _children = [Dashboard(), Calendar(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          fixedColor: Colors.black,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), title: Text('Dashboard')),
            BottomNavigationBarItem(
                icon: Icon(Icons.event), title: Text('Calendar')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('Settings'))
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
