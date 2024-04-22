part of 'add_task_bloc.dart';

@freezed
class AddTaskEvent with _$AddTaskEvent {   
  factory AddTaskEvent.loadData() = _LoadDataEvent; 
  factory AddTaskEvent.setDateTime(DateTime dateTime) = _SetDateTimeEvent;
  factory AddTaskEvent.saveTodo(String title, String description) = _SaveTodoEvent;
}
