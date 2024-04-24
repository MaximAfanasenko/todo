import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:todo/base/services/tasks_cache.dart';
import 'package:todo/features/tasks/models/todo.dart';

@singleton
class TasksService {
  TasksService({required this.tasksCache});

  final TasksCache tasksCache;

  final controller = StreamController<List<Todo>>.broadcast();

  Future<void> readData() async {
    final data = await tasksCache.readTodos();
    controller.add(data);
  }

  Future<Todo?> getTodoById(String id) async {
    final data = await tasksCache.readTodos();
    final todo = data.where((element) => element.id == id).firstOrNull;
    return todo;
  }

  Future<void> addData(Todo todo) async {
    await tasksCache.saveTodo(todo);
    await readData();
  }

  Future<void> updateData(Todo todo) async {
    await tasksCache.updateTodo(todo);
    await readData();
  }

  Future<void> deleteTodo(Todo todo) async {
    await tasksCache.deleteTodo(todo);
    await readData();
  }

  void dispose() {
    controller.close();
  }
}
