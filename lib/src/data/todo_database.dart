import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase extends ChangeNotifier {
  List toDoList = [];

  final _myBox = Hive.box('myBox');

  void ordenar() {
    toDoList.sort((a, b) => a[2].compareTo(b[2]));
    updateDataBase();
  }

  void createInitialData() {
    toDoList = [
      [
        'Make Tutorial',
        DateTime(2034, 03, 03, 12, 34),
        false,
      ],
      [
        'tarefa atrasada',
        DateTime(2012, 03, 03, 12, 34),
        false,
      ]
    ];
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
