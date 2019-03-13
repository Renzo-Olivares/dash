import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Center(child: new Text('Dashboard')),
          elevation: 0,
        ),
    );
  }
}
