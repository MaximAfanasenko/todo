part of 'add_task_bloc.dart';

@freezed
class AddTaskState with _$AddTaskState {
  factory AddTaskState.loading() = _LoadingState;
  factory AddTaskState.fillingFields() = _FillingFieldsState;
}
