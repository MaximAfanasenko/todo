import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/features/tasks/models/todo.dart';
import 'package:todo/base/services/tasks_service.dart';
import 'package:uuid/uuid.dart';

part 'add_task_state.dart';
part 'add_task_event.dart';
part 'add_task_bloc.freezed.dart';

class AddTaskBloc extends Bloc<AddTaskEvent, AddTaskState> {
  AddTaskBloc(this.tasksService, this.todo, super.initialState) {
    sub = tasksService.controller.stream
        .listen((todos) => add(AddTaskEvent.loading()));

    on<_LoadingEvent>((_, emit) {
      emit(AddTaskState.loading());
    });

    on<_FillingFieldsEvent>((event, emit) {});

    on<_SetDateTimeEvent>((event, emit) {
      selectedDateTime = event.dateTime;
    });

    on<_SaveTodoEvent>((event, emit) {
      if (selectedDateTime == null) {
        return;
      }

      if (todo != null) {
        var todo = Todo(
          id: this.todo!.id,
          name: event.title,
          description: event.description,
          createdAt: selectedDateTime!,
        );

        tasksService.updateData(todo);
      } else {
        var todo = Todo(
          id: const Uuid().v4(),
          name: event.title,
          description: event.description,
          createdAt: selectedDateTime!,
        );

        tasksService.addData(todo);
      }

      emit(AddTaskState.completed());
    });
  }

  DateTime? selectedDateTime;

  late StreamSubscription<void> sub;
  late Todo? todo;
  final TasksService tasksService;

  @override
  Future<void> close() {
    sub.cancel();
    return super.close();
  }
}
