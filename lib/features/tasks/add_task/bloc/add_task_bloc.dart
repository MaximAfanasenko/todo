import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_demo/app/services/app_service.dart';
//import 'package:flutter_demo/data/my_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/features/tasks/models/todo.dart';
import 'package:todo/features/tasks/tasks_service.dart';

part 'add_task_state.dart';
part 'add_task_event.dart';
part 'add_task_bloc.freezed.dart';

class AddTaskBloc extends Bloc<AddTaskEvent, AddTaskState> {
  AddTaskBloc(this.tasksService) : super(AddTaskState.fillingFields()) {
    sub = tasksService.controller.stream
        .listen((todos) => add(AddTaskEvent.loading()));

    on<_LoadingEvent>((_, emit) {
      //tasksService.readData();      

      // navigate to tasks screen

     emit(AddTaskState.loading());
    });

    on<_FillingFieldsEvent>((event, emit) {
      
    });

    on<_AddingTaskEvent>((event, emit) {
      tasksService.addData(event.todo);
    });
  }

  late StreamSubscription<void> sub;
  final TasksService tasksService;

  @override
  Future<void> close() {
    sub.cancel();
    return super.close();
  }
}
