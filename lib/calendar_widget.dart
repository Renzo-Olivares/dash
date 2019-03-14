import 'package:flutter/material.dart';
import 'custom_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    DateTime selectedDate = DateTime.now();
    final firstDate = DateTime(2018, 8);
    final lastDate = DateTime(2101);
    final selectableDayPredicate = null;
    final initialDatePickerMode = DatePickerModeCustom.day;
    return Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text('Calendar'),
          elevation: 0,
        ),
        floatingActionButton: new FloatingActionButton(
            onPressed: null, child: new Icon(Icons.add)),
        body: new DatePickerDialog(
          initialDate: selectedDate,
          firstDate: firstDate,
          lastDate: lastDate,
          selectableDayPredicate: selectableDayPredicate,
          initialDatePickerMode: initialDatePickerMode,
        ));
  }
}
