import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/features/tasks/models/todo.dart';
import 'package:todo/features/tasks/tasks_service.dart';

part 'add_task_state.dart';
part 'add_task_event.dart';
part 'add_task_bloc.freezed.dart';

class AddTaskBloc extends Bloc<AddTaskEvent, AddTaskState> {
  AddTaskBloc(this.tasksService, Todo? todo)
      : super(AddTaskState.fillingFields()) {
    if (todo != null) {
      titleController.text = todo.name;
      textController.text = todo.description;
    }

    sub = tasksService.controller.stream
        .listen((todos) => add(AddTaskEvent.loading()));

    on<_LoadingEvent>((_, emit) {
      emit(AddTaskState.loading());
    });

    on<_FillingFieldsEvent>((event, emit) {});

    on<_AddingTaskEvent>((event, emit) {
      tasksService.addData(event.todo);
    });
  }

  final titleController = TextEditingController();
  final textController = TextEditingController();
  late StreamSubscription<void> sub;
  final TasksService tasksService;

  @override
  Future<void> close() {
    sub.cancel();
    titleController.dispose();
    textController.dispose();
    return super.close();
  }
}
