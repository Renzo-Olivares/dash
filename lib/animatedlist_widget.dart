import 'package:flutter/material.dart';
import 'package:dash/TaskModel.dart';

class AnimatedTaskList extends StatefulWidget {
  final GlobalKey<AnimatedListState> _key;

  AnimatedTaskList(this._key);

  void addUser() {
    int index = listData.length;
    listData.add(
      TaskModel(
        taskTitle: "Grocery Shopping",
        taskDetails: "Costco",
      ),
    );
    _key.currentState.insertItem(index, duration: Duration(milliseconds: 500));
  }

  @override
  _AnimatedTaskListState createState() => _AnimatedTaskListState(_key);
}

class _AnimatedTaskListState extends State<AnimatedTaskList> {
  final GlobalKey<AnimatedListState> _key;

  _AnimatedTaskListState(this._key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: AnimatedList(
              key: _key,
              initialItemCount: listData.length,
              itemBuilder:
                  (BuildContext context, int index, Animation animation) {
                return Dismissible(
                    key: ValueKey("placeholder"), //make key index of list
                    onDismissed: (both){
                      
                    },
                    background: Card(
                        child: Container(
                          alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 20.0),
                            color: Colors.blueAccent,
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ))),
                    secondaryBackground: Card(
                        child: Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 20.0),
                      color: Colors.blueAccent,
                      child: Icon(Icons.delete, color: Colors.white),
                    )),
                    child: Card(
                        child: FadeTransition(
                            opacity: animation,
                            child: ListTile(
                              title: Text(listData[index].taskTitle),
                              subtitle: Text(listData[index].taskDetails),
                              onLongPress: () {
                                //todo delete user
                              },
                            ))));
              })),
    );
  }
}
