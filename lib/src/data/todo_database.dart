import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/todo_modal.dart';

class ToDoDataBase extends ChangeNotifier {
  List toDoList = [];

  final _myBox = Hive.box('myBox');

  void createInitialData() {
    toDoList = [
      ['Make Tutorial', DateTime(2034, 03, 03, 12, 34), false],
      ['tarefa atrasada', DateTime(2012, 03, 03, 12, 34), false]
    ];
    updateDataBase();
  }

  void loadData() {
    toDoList = _myBox.get('TODOLIST');
    notifyListeners();
  }

  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
    notifyListeners();
  }
}
