import 'package:challenge03_fteam/src/datasource/todo_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  final box = await Hive.openBox('myBox');
  final db = ToDoDataBase();
  await db.loadData();
  final todolist = db.returnToDoList();

  testWidgets(
    'testando a ordem',
    (WidgetTester tester) async {
      ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: todolist.length,
        itemBuilder: (BuildContext context, int index) {
          final ordination = DateTime.parse(todolist[index].dateTodo);
          return Text(
              '${ordination.day}/${ordination.month}/${ordination.year}');
        },
      );
    },
  );
}
