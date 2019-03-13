import 'package:flutter/material.dart';

class Settings extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SettingsState();
}

class _SettingsState extends State<Settings>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Center(child: new Text('Settings')),
        elevation: 0,
      ),
    );
  }
}