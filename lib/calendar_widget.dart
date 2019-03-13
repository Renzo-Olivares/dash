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
        centerTitle: true,
        title: new Text('Calendar'),
        elevation: 0,
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: null,
      child: new Icon(Icons.add)),
    );
  }
}