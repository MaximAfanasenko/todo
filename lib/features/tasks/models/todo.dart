import 'package:json_annotation/json_annotation.dart';

part 'todo.g.dart';

@JsonSerializable()
class Todo {
  final String id;
  final String name;
  final String description;
  final DateTime createdAt;

  Todo({
    required this.id,
    required this.name,
    required this.description,
    required this.createdAt,
  });

  /// Connect the generated [_$TodoFromJson] function to the `fromJson`
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  /// Connect the generated [_$TodoToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$TodoToJson(this);
}
