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
    todos.add(todo);
    await cache.setValue(TasksCacheKey, todos);
  }

  Future updateTodo(Todo todo) async {
    var todos = await readTodos();

    var index = todos.indexWhere((element) => element.id == todo.id);
    todos.removeAt(index);
    todos.insert(index, todo);

    await cache.setValue(TasksCacheKey, todos);
  }

  Future deleteTodo(Todo todo) async {
    var todos = await readTodos();
    todos.remove(todo);
    await cache.setValue(TasksCacheKey, todos);
  }

  Future<List<Todo>> readTodos() async {
    var todosJson = await cache.getValue(TasksCacheKey);

    if (todosJson != null) {
      List<dynamic> todosList = jsonDecode(todosJson);
      List<Todo> todos = todosList.map((item) {
        return Todo.fromJson(item);
      }).toList();
      return todos;
    } else {
      return [];
    }
  }
}
