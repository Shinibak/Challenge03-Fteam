import 'package:hive/hive.dart';

abstract class IHttpPutService {
  Future put(String url, String toDo);
}

class TodoHttpPutService implements IHttpPutService {
  final Box _box;

  TodoHttpPutService(this._box);

  @override
  Future put(String url, String toDo) async {
    await _box.put(url, toDo);
  }
}
