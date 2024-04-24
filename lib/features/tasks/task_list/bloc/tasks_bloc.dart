import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/base/services/tasks_service.dart';
import 'package:todo/features/tasks/models/todo.dart';

part 'tasks_bloc.freezed.dart';
part 'tasks_event.dart';
part 'tasks_state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc(this.service) : super(TasksState.data(List.empty())) {
    sub = service.controller.stream
        .listen((todos) => add(TasksEvent.setData(todos)));

    _bind();
  }

  void _bind() {
    on<_LoadDataEvent>((_, emit) async {
      await service.readData();
    });

    on<_SetData>((event, emit) => emit(TasksState.data(event.todos)));

    on<_DeleteTodo>((event, emit) async {
      await service.deleteTodo(event.todo);
    });
  }

  late StreamSubscription<void> sub;
  final TasksService service;

  @override
  Future<void> close() {
    sub.cancel();
    return super.close();
  }
}
