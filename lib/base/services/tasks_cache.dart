import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:todo/base/cache/cache.dart';
import 'package:todo/features/tasks/models/todo.dart';

@singleton
class TasksCache {
  TasksCache({required this.cache});

  static const String tasksCacheKey = 'TasksCacheKey';

  final Cache cache;

  Future<void> saveTodo(Todo todo) async {
    final todos = await readTodos();
    todos.add(todo);
    await cache.setValue(tasksCacheKey, todos);
  }

  Future<void> updateTodo(Todo todo) async {
    final todos = await readTodos();
    final index = todos.indexWhere((element) => element.id == todo.id);
    todos..removeAt(index)..insert(index, todo);
    await cache.setValue(tasksCacheKey, todos);
  }

  Future<void> deleteTodo(Todo todo) async {
    final todos = await readTodos();
    todos.remove(todo);
    await cache.setValue(tasksCacheKey, todos);
  }

  Future<List<Todo>> readTodos() async {
    final todosJson = await cache.getString(tasksCacheKey);

    if (todosJson != null) {
      final todosList = jsonDecode(todosJson) as List<dynamic>;
      final todos = todosList.map((item) {
        return Todo.fromJson(item);
      }).toList();
      return todos;
    } else {
      return [];
    }
  }
}
