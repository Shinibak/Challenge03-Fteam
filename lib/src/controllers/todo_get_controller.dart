import '../models/todo_model.dart';
import '../repositories/todo_get_repository.dart';

abstract class ITodoGetController {
  Future<List<ToDoModel>> initiatedTodo(String key);
}

class TodoGetController implements ITodoGetController{
  final ITodoGetRepository _repository;

  TodoGetController(this._repository);

  @override
  Future<List<ToDoModel>> initiatedTodo(String key) async {
    final todo = await _repository.getTodo(key);
    return todo;
  }
}
