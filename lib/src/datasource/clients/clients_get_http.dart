import 'package:hive/hive.dart';

abstract class IHttpGetService {
  Future<String> get(String url);
}

class TodoHttpGetService implements IHttpGetService {
  final Box _box;

  TodoHttpGetService(this._box);

  @override
  Future<String> get(String url) async {
    final response = await _box.get(url);
    return response;
  }
}
