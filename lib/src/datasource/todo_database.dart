// ignore_for_file: avoid_positional_boolean_parameters
import 'package:challenge03_fteam/src/controllers/todo_put_controller.dart';
import 'package:challenge03_fteam/src/models/todo_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../controllers/todo_get_controller.dart';
import '../repositories/todo_get_repository.dart';
import '../repositories/todo_put_repository.dart';
import 'clients/clients_get_http.dart';
import 'clients/clients_put_http.dart';
import 'todo_get_datasource.dart';
import 'todo_put_datasource.dart';

class ToDoDataBase extends ChangeNotifier {
  List<ToDoModel> _toDoList = [];

  List<ToDoModel> returnToDoList() {
    final toDoList = _toDoList;
    return toDoList;
  }

  void createInitialData() {
    _toDoList = [
      ToDoModel(
        taskTodo: 'example',
        dateTodo: DateTime(2012, 03, 03, 12, 34).toString(),
        isCompleted: false,
      ),
    ];
    updateDataBase();
  }

  void saveNewTask(DateTime date, String task) {
    _toDoList.add(
      ToDoModel(
        taskTodo: task,
        dateTodo: date.toString(),
        isCompleted: false,
      ),
    );
    // db.createInitialData();
    updateDataBase();
  }

  void deletedTask(int index) {
    _toDoList.removeAt(index);
    updateDataBase();
  }

  void checkBoxChanged(bool? value, int index) {
    _toDoList[index].isCompleted = !_toDoList[index].isCompleted;
    updateDataBase();
  }

  void orderByeDate() {
    _toDoList.sort((a, b) => a.dateTodo.compareTo(b.dateTodo));
  }

  Future<void> loadData() async {
    final hiveService = TodoHttpGetService(Hive.box('myBox'));
    final datasource = TodoGetDatasource(hiveService);
    final repository = TodoGetRepository(datasource);
    final controller = TodoGetController(repository);
    _toDoList = await controller.initiatedTodo('TODOLIST');
    notifyListeners();
  }

  Future<void> updateDataBase() async {
    orderByeDate();
    final hiveService = TodoHttpPutService(Hive.box('myBox'));
    final dataSource = TodoPutDatasource(hiveService);
    final repository = TodoPutRepository(dataSource);
    final controller = TodoPutController(repository);
    await controller.putTodo('TODOLIST', _toDoList);
    notifyListeners();
  }
}
