part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  factory TasksEvent.loadData() = _LoadDataEvent;
  factory TasksEvent.setData(List<Todo> todos) = _SetData;
  factory TasksEvent.deleteTodo(Todo todo) = _DeleteTodo;
}
