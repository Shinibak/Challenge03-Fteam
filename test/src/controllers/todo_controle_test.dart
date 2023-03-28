import 'package:challenge03_fteam/src/controllers/todo_controle.dart';
import 'package:challenge03_fteam/src/datasource/local_service/hive_local_storage_service.dart';
import 'package:challenge03_fteam/src/datasource/todo_get_datasource.dart';
import 'package:challenge03_fteam/src/datasource/todo_put_datasource.dart';
import 'package:challenge03_fteam/src/repositories/todo_get_repository.dart';
import 'package:challenge03_fteam/src/repositories/todo_put_repository.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();

  // ignore: unused_local_variable
  final box = await Hive.openBox('myBox');
  final myBox = Hive.box('myBox');
  final hiveService = HiveLocalStorageService(myBox);
  final getDatasource = TodoGetDatasource(hiveService);
  final putDatasource = TodoPutDatasource(hiveService);
  final getRepository = TodoGetRepository(getDatasource);
  final putRepository = TodoPutRepository(putDatasource);
  final controller = TodoController(putRepository, getRepository);
  controller.getTodo('Cris');

  final firstDate = DateTime.parse(controller.returnToDoList().first.dateTodo);
  final lastDate = DateTime.parse(controller.returnToDoList().last.dateTodo);

  var validate = false;
  print(controller.returnToDoList());

  if (firstDate.year <= lastDate.year) {
    if (firstDate.month < lastDate.month) {
      validate = true;
    } else if (firstDate.month == lastDate.month) {
      if (firstDate.day <= lastDate.day) {
        if (firstDate.hour <= lastDate.hour) {
          if (firstDate.minute <= lastDate.minute) {
            validate = true;
          } else {
            validate = false;
          }
        } else {
          validate = false;
        }
      } else {
        validate = false;
      }
    } else {
      validate = false;
    }
  } else {
    validate = false;
  }

  test('testando data', () {
    expect(validate, true);
  });
}
