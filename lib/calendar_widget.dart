import 'package:flutter/material.dart';
import 'custom_calendar.dart';
import 'animatedlist_widget.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final AnimatedTaskList calendarTasks =
      AnimatedTaskList(GlobalKey<AnimatedListState>(debugLabel: "key 4"));
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    DateTime selectedDate = DateTime.now();
    final firstDate = DateTime(2018, 8);
    final lastDate = DateTime(2101);
    final selectableDayPredicate = null;
    final initialDatePickerMode = DatePickerModeCustom.day;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Calendar'),
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              _onFabPress(context);
            },
            child: Icon(Icons.add)),
        body: Column(
          children: <Widget>[
            DatePickerDialog(
              initialDate: selectedDate,
              firstDate: firstDate,
              lastDate: lastDate,
              selectableDayPredicate: selectableDayPredicate,
              initialDatePickerMode: initialDatePickerMode,
            ),
            Card(
                child: Container(
                    height: 20,
                    width: 400,
                    child: Text("Calendar Date Placeholder"))),
            SizedBox(width: 400, height: 278, child: calendarTasks)
          ],
        ));
  }

  void _onFabPress(context) {}
}
