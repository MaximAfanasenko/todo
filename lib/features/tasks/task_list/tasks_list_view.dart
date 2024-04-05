import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/base/di/di.dart';
import 'package:todo/features/tasks/add_task/add_screen_arguments.dart';
import 'package:todo/features/tasks/task_list/bloc/tasks_bloc.dart';
import 'package:todo/generated/locale_keys.g.dart';

import '../add_task/add_task_view.dart';
import 'task_item.dart';

import 'package:easy_localization/easy_localization.dart';

class TasksListView extends StatelessWidget {
  TasksListView({super.key});

  Future<void> fetchData() async {
    // ...
  }
  static const routeName = '/';

  final List<TaskItem> items = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TasksBloc>(
      create: (_) => TasksBloc(inject()),
      child: BlocBuilder<TasksBloc, TasksState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            data: (todos) {
              if (todos.isEmpty) {
                return Center(
                    child: Text(context.read<TasksBloc>().noDataText));
              }

              return ListView(
                children: todos
                    .map(
                      (todo) => Dismissible(
                        key: Key(todo.id),
                        onDismissed: (direction) {
                          context
                              .read<TasksBloc>()
                              .add(TasksEvent.deleteTodo(todo));

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(context
                                  .read<TasksBloc>()
                                  .deletedText(todo))));
                        },
                        background: Container(
                          color: Colors.red,
                          child: const Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        child: ListTile(
                          title: Text(todo.name),
                          onTap: () {
                            Navigator.pushNamed(context, AddTaskView.routeName,
                                arguments: todo);
                          },
                          subtitle: Text(todo.createdAt.toIso8601String()),
                        ),
                      ),
                    )
                    .toList(),
              );
            },
          );
        },
      ),
    );
  }
}
