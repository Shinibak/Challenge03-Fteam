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
  List<ToDoModel> toDoList = [];

  void createInitialData() {
    toDoList = [
      ToDoModel(
        taskTodo: 'example',
        dateTodo: DateTime(2012, 03, 03, 12, 34).toString(),
        isCompleted: false,
      ),
    ];
    updateDataBase();
  }

   void saveNewTask(DateTime date, String task) {
    toDoList.add(
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
    toDoList.removeAt(index);
    updateDataBase();
  }

    void checkBoxChanged(bool? value, int index) {
    toDoList[index].isCompleted = !toDoList[index].isCompleted;
    updateDataBase();
  }

  void orderByeDate() {
    toDoList.sort((a, b) => a.dateTodo.compareTo(b.dateTodo));
  }

  Future<void> loadData() async {
    final hiveService = TodoHttpGetService(Hive.box('myBox'));
    final datasource = TodoGetDatasource(hiveService);
    final repository = TodoGetRepository(datasource);
    final controller = TodoGetController(repository);
    toDoList = await controller.initiatedTodo('TODOLIST');
    notifyListeners();
  }

  Future<void> updateDataBase() async {
    orderByeDate();
    final hiveService = TodoHttpPutService(Hive.box('myBox'));
    final dataSource = TodoPutDatasource(hiveService);
    final repository = TodoPutRepository(dataSource);
    final controller = TodoPutController(repository);
    await controller.putTodo('TODOLIST', toDoList);
    notifyListeners();
  }
}
