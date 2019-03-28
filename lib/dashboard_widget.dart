import 'package:flutter/material.dart';
import 'search_widget.dart';
import 'animatedlist_widget.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  AnimatedTaskList pastList = AnimatedTaskList(GlobalKey<AnimatedListState>(debugLabel: "key 1"));
  AnimatedTaskList todayList = AnimatedTaskList(GlobalKey<AnimatedListState>(debugLabel: "key 2"));
  AnimatedTaskList futureList = AnimatedTaskList(GlobalKey<AnimatedListState>(debugLabel: "key 3"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.grid_on), onPressed: null)
        ],
        title: Text('Dashboard'),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            _onFabPress(context);
          },
          child: Icon(Icons.add)),
      body: Scaffold(
        appBar: SearchWidget(
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
                    child: TabBar(
                        unselectedLabelColor: Colors.black45,
                        labelColor: Colors.white,
                        indicator: CustomTabIndicator(),
                        tabs: <Widget>[
                          Tab(text: "Past"),
                          Tab(text: "Today"),
                          Tab(text: "Future")
                        ]),
                  ),
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  pastList,
                  todayList,
                  futureList
                ],
              )),
        ),
      ),
    );
  }

  void _onFabPress(context) {
    pastList.addUser();
  }
}

class CustomTabIndicator extends Decoration {
  @override
  BoxPainter createBoxPainter([onChanged]) {
    // TODO: implement createBoxPainter
    return _CustomPainter(this, onChanged);
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
