import 'package:flutter/material.dart';
import 'search_widget.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.grid_on), onPressed: null)
          ],
          title: new Text('Dashboard'),
          elevation: 0,
        ),
        floatingActionButton: new FloatingActionButton(
            onPressed: () {
              _onFabPress(context);
            },
            child: new Icon(Icons.add)),
        body: Scaffold(
            appBar: new SearchWidget(
              onPressed: () => print('implement search'),
              icon: Icons.search,
              title: 'Search',
              preferredSize: Size.fromHeight(50.0),
            ),
            body: DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: PreferredSize(
                      preferredSize: Size.fromHeight(kToolbarHeight),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: new TabBar(
                              unselectedLabelColor: Colors.black45,
                              labelColor: Colors.white,
                              indicator: CustomTabIndicator(),
                              tabs: <Widget>[
                                new Tab(text: "Past"),
                                new Tab(text: "Today"),
                                new Tab(text: "Future")
                              ]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
  }

  void _onFabPress(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              child: new Wrap(children: <Widget>[
            new TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Task Title')),
            new TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Task Details',
            )),
          ]));
        });
  }
}

class CustomTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([onChanged]) {
    // TODO: implement createBoxPainter
    return new _CustomPainter(this, onChanged);
  }
}

class _CustomPainter extends BoxPainter {
  final CustomTabIndicator decoration;

  _CustomPainter(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    assert(configuration != null);
    assert(configuration.size != null);

    final indicatorHeight = 30.0;
    final Rect rect = Offset(
            offset.dx, (configuration.size.height / 2) - indicatorHeight / 2) &
        Size(configuration.size.width, indicatorHeight);
    final Paint paint = Paint();
    paint.color = Colors.blueAccent;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(RRect.fromRectAndRadius(rect, Radius.circular(30)), paint);
  }
}
