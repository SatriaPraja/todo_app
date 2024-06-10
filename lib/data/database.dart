import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference our box
  final _mybox = Hive.box('mybox');

  //run this method first time ever open the app
  void createInitialData() {
    toDoList = [
      ['Make a Tutorial', false],
      ['Do Exercise', false],
    ];
  }

  //load data from database
  void loadData() {
    toDoList = _mybox.get('TODOLIST');
  }

  //update database
  void updateDatabase() {
    _mybox.put('TODOLIST', toDoList);
  }
}
