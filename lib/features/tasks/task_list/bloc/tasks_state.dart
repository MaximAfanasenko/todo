part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  factory TasksState.loading() = _LoadingState;
  factory TasksState.data(List<Todo> todos) = _DataState;
}
