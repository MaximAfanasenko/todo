import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/base/di/di.dart';
import 'package:todo/features/tasks/add_task/add_screen_arguments.dart';
import 'package:todo/features/tasks/task_list/bloc/tasks_bloc.dart';

import '../add_task/add_task_view.dart';
import 'task_item.dart';

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
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TODO'),
            actions: [
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () async {
                  var addScreenArgumentsJsonString = (await Navigator.pushNamed(
                      context, AddTaskView.routeName)) as String;

                  var addScreenArgumentsMap =
                      jsonDecode(addScreenArgumentsJsonString);

                  var addScreenArguments =
                      AddScreenArguments.fromJson(addScreenArgumentsMap);

                  //setState(() {
                  // items.add(TaskItem(
                  //     addScreenArguments.title,
                  //     addScreenArguments.text,
                  //     addScreenArguments.selectedDeadline));
                  //});

                  var str = addScreenArguments.toString();
                  print('Data from Second Screen: $str');
                },
              ),
            ],
          ),
          body: BlocBuilder<TasksBloc, TasksState>(
            builder: (context, state) {
              return state.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                data: (todos) {
                  if (todos.isEmpty) {
                    return const Center(child: Text('No Data'));
                  }

                  return ListView(
                    children: todos
                        .map(
                          (e) => ListTile(
                            title: Text(e.name),
                            subtitle: Text(e.createdAt.toIso8601String()),
                          ),
                        )
                        .toList(),
                  );
                },
              );
            },
          ),
        ));
  }
}