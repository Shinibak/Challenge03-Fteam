import 'package:challenge03_fteam/src/models/todo_model.dart';

import 'clients/clients_put_http.dart';

abstract class ITodoPutDatasource {
  Future putDataSource(String key, String put);
}

class TodoPutDatasource implements ITodoPutDatasource {
  final IHttpPutService _service;

  TodoPutDatasource(this._service);

  @override
  Future putDataSource(String key,String put) async {
    await _service.put(key, put);
  }
}
