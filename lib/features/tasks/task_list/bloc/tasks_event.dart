part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  factory TasksEvent.loadData() = _LoadEvent;

  factory TasksEvent.setData(List<Todo> todos) = _SetData;
}
