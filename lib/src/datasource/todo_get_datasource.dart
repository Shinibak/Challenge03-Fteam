import 'package:challenge03_fteam/src/models/todo_model.dart';

import 'clients/clients_get_http.dart';

abstract class ITodoGetDatasource {
  Future<String> getDataSource(String key);
}

class TodoGetDatasource implements ITodoGetDatasource {
  final IHttpGetService _service;

  TodoGetDatasource(this._service);

  @override
  Future<String> getDataSource(String key) async {
    final response = await _service.get(key);
    return response;
  }
}
