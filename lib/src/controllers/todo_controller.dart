import 'package:challenge03_fteam/src/models/todo_model.dart';
import 'package:flutter/cupertino.dart';
import '../repositories/todo_get_repository.dart';
import '../repositories/todo_put_repository.dart';

class TodoController extends ChangeNotifier {
  final ITodoPutRepository _todoPutRepository;
  final ITodoGetRepository _todoGetRepository;

  TodoController(this._todoPutRepository, this._todoGetRepository);

  List<ToDoModel> _toDoList = [];
  late String _name;

  List<ToDoModel> returnToDoList() {
    final toDoList = _toDoList;
    return toDoList;
  }

  void createInitialData() {
    _toDoList.add(
      ToDoModel(
        taskTodo: 'example 1',
        dateTodo: DateTime(2012, 03, 03, 12, 34).toString(),
        isCompleted: false,
      ),
    );
    putTodo();
  }

  void saveNewTask(DateTime date, String task) {
    _toDoList.add(
      ToDoModel(
        taskTodo: task,
        dateTodo: date.toString(),
        isCompleted: false,
      ),
    );
    putTodo();
  }

  void deletedTask(int index) {
    _toDoList.removeAt(index);
    putTodo();
  }

  void checkBoxChanged(bool value, int index) {
    _toDoList[index].isCompleted = !_toDoList[index].isCompleted;
    putTodo();
  }

  void orderByeDate() {
    _toDoList.sort((a, b) => a.dateTodo.compareTo(b.dateTodo));
  }

  Future<List<ToDoModel>> getTodo(String name) async {
    _name = name;
    _toDoList = await _todoGetRepository.getTodo(_name);
    notifyListeners();
    return returnToDoList();
  }

  Future<void> putTodo() async {
    orderByeDate();
    await _todoPutRepository.putTodo(_name, _toDoList);
    notifyListeners();
  }
}
