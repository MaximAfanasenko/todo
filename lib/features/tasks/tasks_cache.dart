import 'package:injectable/injectable.dart';
import 'package:todo/features/tasks/models/todo.dart';

@singleton
class TodoCache {
  Future<List<Todo>> readData() async {
    await Future.delayed(const Duration(seconds: 1));

    return [
      Todo(createdAt: DateTime.now(), name: 'Created now'),
      Todo(createdAt: DateTime(2023, 10, 25), name: 'Created 25.10.2023'),
    ];
  }
}
