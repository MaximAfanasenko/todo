import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/base/di/di.dart';
import 'package:todo/features/tasks/add_task/add_screen_arguments.dart';
import 'package:todo/features/tasks/task_list/bloc/tasks_bloc.dart';

import '../add_task/add_task_view.dart';
import 'task_item.dart';

/// Displays a list of SampleItems.
class TasksListView extends StatefulWidget {
  const TasksListView({
    super.key,
  });

  static const routeName = '/';

  @override
  State<TasksListView> createState() => _TasksListViewState();
}

class _TasksListViewState extends State<TasksListView> {
  Future<void> fetchData() async {
    // ...
  }

  List<TaskItem> items = List.empty(growable: true);

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

                  setState(() {
                    items.add(TaskItem(
                        addScreenArguments.title,
                        addScreenArguments.text,
                        addScreenArguments.selectedDeadline));
                  });

                  var str = addScreenArguments.toString();
                  print('Data from Second Screen: $str');
                },
              ),
            ],
          ),
          body: ListView.builder(
            restorationId: 'sampleItemListView',
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              final item = items[index];

              return ListTile(
                  title: Text(item.title, maxLines: 1),
                  subtitle: Text(item.text, maxLines: 2),
                  leading: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: item.expired ? Colors.red : Colors.green),
                  ),
                  onTap: () {});
            },
          ),
        ));
  }
}
