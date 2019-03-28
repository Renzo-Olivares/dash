import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class SearchWidget extends StatelessWidget implements PreferredSizeWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;
  final PreferredSizeWidget bottom;
  @override
  final Size preferredSize;

  SearchWidget(
      {this.icon, this.title, this.onPressed, this.preferredSize, this.bottom});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final searchTitle = title;
    return InkWell(
        onTap: onPressed,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [
                        0.1,
                        0.5,
                        0.7,
                        0.9
                      ],
                      colors: [
                        Colors.grey[350],
                        Colors.grey[300],
                        Colors.grey[200],
                        Colors.grey[100],
                      ]),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(icon),
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                          SizedBox(height: 10.5),
                          AutoSizeText(
                            searchTitle,
                            style: TextStyle(fontSize: 25.0),
                            minFontSize: 13.0,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )
                        ]))
                  ]),
            )));
  }
}
