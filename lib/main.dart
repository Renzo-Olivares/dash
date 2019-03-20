import 'package:flutter/material.dart';
import 'homenav_widget.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark));
    _updateNavigationBarIconBrightness();
    return new MaterialApp(
        title: 'Dash',
        home: Homenav(),
        theme: new ThemeData(primaryColor: Colors.white,
        accentColor: Colors.blueAccent));
  }

  void _updateNavigationBarIconBrightness() async {
    SystemChannels.lifecycle.setMessageHandler((msg) {
      if (msg == AppLifecycleState.resumed.toString()) {
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle.light.copyWith(
            systemNavigationBarColor: Colors.white,
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
        );
      }
    });
  }
}
