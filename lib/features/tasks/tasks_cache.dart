import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:todo/base/cache/cache.dart';
import 'package:todo/features/tasks/models/todo.dart';

@singleton
class TasksCache {
  static const String TasksCacheKey = "TasksCacheKey";

  final Cache cache;

  TasksCache({required this.cache});

  Future saveTodo(Todo todo) async {
    var todos = await readTodos();

    //todos.

    todos.add(todo);
    await cache.setValue(TasksCacheKey, todos);
  }

  Future<List<Todo>> readTodos() async {
    var todosJson =
        await cache.getValue(TasksCacheKey); //  ?? List.empty(growable: true);

    if (todosJson != null) {
      List<dynamic> todosList = jsonDecode(todosJson);
      List<Todo> todos = todosList.map((item) {
        return Todo.fromJson(item);
      }).toList();
      return todos;
    } else {
      return []; // Возвращаем пустой список, если данные отсутствуют
    }

    // await Future.delayed(const Duration(seconds: 1));

    // return [
    //   Todo(createdAt: DateTime.now(), name: 'Created now'),
    //   Todo(createdAt: DateTime(2023, 10, 25), name: 'Created 25.10.2023'),
    // ];
  }
}
