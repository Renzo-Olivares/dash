import 'package:flutter/material.dart';

class Calendar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar(
        title: Center(child: new Text('Calendar')),
        elevation: 0,
      ),
    );
  }
}