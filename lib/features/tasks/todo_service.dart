import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:todo/features/tasks/models/todo.dart';
import 'package:todo/features/tasks/tasks_cache.dart';

@singleton
class TodoService {
  final TodoCache storage;

  TodoService({required this.storage});

  final controller = StreamController<List<Todo>>();

  Future<void> readData() async {
    final data = await storage.readData();

    controller.add(data);
  }

  void dispose() {
    controller.close();
  }
}
