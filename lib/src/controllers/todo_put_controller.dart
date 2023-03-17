import '../models/todo_model.dart';
import '../repositories/todo_put_repository.dart';

abstract class ITodoPutController {
  Future putTodo(String rep ,List<ToDoModel> put);
}

class TodoPutController implements ITodoPutController {
  final ITodoPutRepository _repository;

  TodoPutController(this._repository);
  

  @override
  Future putTodo(String rep, List<ToDoModel> put) async {
    await _repository.putTodo(rep, put);
  }
}
