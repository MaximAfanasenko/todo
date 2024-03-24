part of 'add_task_bloc.dart';

@freezed
class AddTaskEvent with _$AddTaskEvent {
  factory AddTaskEvent.loading() = _LoadingEvent;
  factory AddTaskEvent.fillingFields() = _FillingFieldsEvent;
  factory AddTaskEvent.addingTask(Todo todo) = _AddingTaskEvent;
}
