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
  AddTaskBloc(this.tasksService, this.todoId)
      : super(AddTaskState.loading()) {

    // sub = tasksService.controller.stream
    //     .listen((todos) => add(AddTaskEvent.loading()));

    bind();
  }

  bind() {     
    on<_LoadDataEvent>((event, emit) async {
      var cachedTodo = await tasksService.getTodoById(todoId ?? '');

      if (cachedTodo == null) {
        emit(AddTaskState.creating());
      } else {
        emit(AddTaskState.editing(cachedTodo));
      }            
    });  

    on<_SetDateTimeEvent>((event, emit) {
      selectedDateTime = event.dateTime;
    });

    on<_SaveTodoEvent>((event, emit) async {
      if (selectedDateTime == null) {
        return;
      }

      var cachedTodo = await tasksService.getTodoById(todoId ?? '');

      if (cachedTodo != null) {
        var todo = Todo(
          id: cachedTodo.id,
          name: event.title,
          description: event.description,
          createdAt: selectedDateTime!,
        );

        await tasksService.updateData(todo);
      } else {
        var todo = Todo(
          id: const Uuid().v4(),
          name: event.title,
          description: event.description,
          createdAt: selectedDateTime!,
        );

        await tasksService.addData(todo);
      }

      emit(AddTaskState.completed());
    });
  }

  DateTime? selectedDateTime;

  late StreamSubscription<void> sub;
  late String? todoId;
  final TasksService tasksService;

  @override
  Future<void> close() {
    sub.cancel();
    return super.close();
  }
}
