import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:todo/features/tasks/models/todo.dart';
import 'package:todo/base/services/tasks_cache.dart';

@singleton
class TasksService {
  final TasksCache tasksCache;

  TasksService({required this.tasksCache});

  final controller = StreamController<List<Todo>>.broadcast();

  Future readData() async {
    final data = await tasksCache.readTodos();
    controller.add(data);
  }

  Future<Todo?> getTodoById(String id) async {
    final data = await tasksCache.readTodos();
    var todo = data.where((element) => element.id == id).firstOrNull;
    return todo;
  }

  Future addData(Todo todo) async {
    await tasksCache.saveTodo(todo);
    readData();
  }

  Future updateData(Todo todo) async {
    await tasksCache.updateTodo(todo);
    readData();
  }

  Future deleteTodo(Todo todo) async {
    await tasksCache.deleteTodo(todo);
    readData();
  }

  void dispose() {
    controller.close();
  }
}
