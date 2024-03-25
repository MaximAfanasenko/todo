import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/features/tasks/models/todo.dart';
import 'package:todo/features/tasks/tasks_service.dart';
import 'package:uuid/uuid.dart';

part 'add_task_state.dart';
part 'add_task_event.dart';
part 'add_task_bloc.freezed.dart';

class AddTaskBloc extends Bloc<AddTaskEvent, AddTaskState> {
  AddTaskBloc(this.tasksService, this.todo)
      : super(AddTaskState.fillingFields()) {
    if (todo != null) {
      titleController.text = todo!.name;
      textController.text = todo!.description;
    }

    sub = tasksService.controller.stream
        .listen((todos) => add(AddTaskEvent.loading()));

    on<_LoadingEvent>((_, emit) {
      emit(AddTaskState.loading());
    });

    on<_FillingFieldsEvent>((event, emit) {});

    on<_AddingTaskEvent>((event, emit) {
      if (todo != null) {

        var todo = Todo(
            id: this.todo!.id,
            name: titleController.text,
            description: textController.text,
            createdAt: event.dateTime);

        tasksService.updateData(todo);

      } else {

        var todo = Todo(
            id: const Uuid().v4(),
            name: titleController.text,
            description: textController.text,
            createdAt: event.dateTime);

        tasksService.addData(todo);

      }
    });
  }

  final titleController = TextEditingController();
  final textController = TextEditingController();
  late StreamSubscription<void> sub;
  late Todo? todo;
  final TasksService tasksService;

  String get screenTitleText => todo != null ? "Изменить" : "Создать";
  String get todoTitleText => "Заголовок";
  String get todoDescriptionText => "Описание";
  String get createButtonText => todo != null ? "Выбрать дату и обновить" : "Выбрать дату и создать";

  @override
  Future<void> close() {
    sub.cancel();
    titleController.dispose();
    textController.dispose();
    return super.close();
  }
}
