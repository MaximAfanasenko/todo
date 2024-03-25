import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_demo/app/services/app_service.dart';
//import 'package:flutter_demo/data/my_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/features/tasks/models/todo.dart';
import 'package:todo/features/tasks/tasks_service.dart';

part 'tasks_state.dart';
part 'tasks_event.dart';
part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc(this.service) : super(TasksState.data(List.empty())) {
    sub = service.controller.stream
        .listen((todos) => add(TasksEvent.setData(todos)));

    on<_LoadEvent>((_, emit) async {});

    on<_SetData>((event, emit) => emit(TasksState.data(event.todos)));

    on<_DeleteTodo>((event, emit) async {
      await service.deleteTodo(event.todo);
    });

    service.readData();
  }

  late StreamSubscription<void> sub;
  final TasksService service;

  @override
  Future<void> close() {
    sub.cancel();
    return super.close();
  }
}
