part of 'add_task_bloc.dart';

@freezed
class AddTaskState with _$AddTaskState {
  factory AddTaskState.loading() = _LoadingState;
  factory AddTaskState.creating() = _CreatingState;
  factory AddTaskState.editing(Todo todo) = _EditingState;
  factory AddTaskState.completed() = _CompletedState;
}
