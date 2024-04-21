import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/base/di/di.dart';
import 'package:todo/features/tasks/task_list/bloc/tasks_bloc.dart';
import 'package:todo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class TasksListView extends StatelessWidget {
  TasksListView({super.key});

  static String get routeName => "/tasks";

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TasksBloc>(
      create: (_) => TasksBloc(inject())..add(TasksEvent.loadData()),
      child: BlocBuilder<TasksBloc, TasksState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            data: (todos) {
              if (todos.isEmpty) {
                return Center(
                  child: Text(LocaleKeys.noData.tr()),
                );
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

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("$todo${LocaleKeys.deleted.tr()}"),
                            ),
                          );
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
                            context.goNamed('updateTask', pathParameters: {'todoId': todo.id});
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
