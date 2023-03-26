import 'package:challenge03_fteam/src/controllers/todo_controle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  final box = await Hive.openBox('myBox');
  final db = ToDoDataBase();
  db.createInitialData();
  final todolist = db.returnToDoList();

  final firsTodo = await DateTime.parse(todolist.first.dateTodo);

  final lastTodo = await DateTime.parse(todolist.last.dateTodo);

  bool dateValide() {
    if (firsTodo.year <= lastTodo.year &&
        firsTodo.month <= lastTodo.month &&
        firsTodo.day <= lastTodo.day &&
        firsTodo.hour <= lastTodo.hour &&
        firsTodo.minute < lastTodo.minute) {
      return true;
    } else {
      return false;
    }
  }

  test(
    'testando a ordem',
    () {
      dateValide();
      print(dateValide());
    },
  );
}
