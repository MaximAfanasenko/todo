import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_demo/app/services/app_service.dart';
//import 'package:flutter_demo/data/my_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/features/tasks/models/todo.dart';
import 'package:todo/features/tasks/todo_service.dart';

part 'tasks_state.dart';
part 'tasks_event.dart';
part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc(this.service) : super(TasksState.loading()) {
    sub = service.controller.stream
        .listen((todos) => add(TasksEvent.setData(todos)));

    on<_LoadEvent>((_, emit) {
      service.readData();      
      emit(TasksState.loading());
    });

    on<_SetData>((event, emit) => emit(TasksState.data(event.todos)));
  }

  late StreamSubscription<void> sub;
  final TodoService service;

  @override
  Future<void> close() {
    sub.cancel();
    return super.close();
  }
}
