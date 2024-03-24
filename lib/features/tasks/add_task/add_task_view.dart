import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/base/di/di.dart';
import 'package:todo/features/tasks/add_task/add_screen_arguments.dart';
import 'package:todo/features/tasks/add_task/bloc/add_task_bloc.dart';
import 'package:todo/features/tasks/models/todo.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class AddTaskView extends StatelessWidget {
  const AddTaskView(
      {super.key, required this.titleController, required this.textController});

  static const routeName = '/settings';
  final TextEditingController titleController;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddTaskBloc>(
        create: (_) => AddTaskBloc(inject()),
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Settings'),
            ),
            body: BlocBuilder<AddTaskBloc, AddTaskState>(
                builder: (context, state) {
              return state.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  fillingFields: () {
                    // if (todos.isEmpty) {
                    //   return const Center(child: Text('No Data'));
                    // }

                    return Padding(
                      padding: const EdgeInsets.all(16),
                      // Glue the SettingsController to the theme selection DropdownButton.
                      //
                      // When a user selects a theme from the dropdown list, the
                      // SettingsController is updated, which rebuilds the MaterialApp.r
                      child: Column(
                        children: [
                          TextField(
                              decoration:
                                  const InputDecoration(hintText: "Заголовок"),
                              maxLines: 1,
                              controller: titleController),
                          TextField(
                              decoration:
                                  const InputDecoration(hintText: "Описание"),
                              maxLines: 5,
                              controller: textController),
                          Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: ElevatedButton(
                                  onPressed: () async {   

                                    var addTaskBloc = context.read<AddTaskBloc>();                           

                                    var datePickingResult =
                                        await showDatePicker(
                                            context: context,
                                            firstDate: DateTime.now().subtract(
                                                const Duration(days: 30)),
                                            lastDate: DateTime.now()
                                                .add(const Duration(days: 60)));

                                    if (datePickingResult == null) {
                                      return;
                                    }            

                                    var todo = Todo(name: titleController.text, description: textController.text, createdAt: datePickingResult!);

                                    addTaskBloc.add(AddTaskEvent.addingTask(todo));

                                    Navigator.pop(context);
                                  },
                                  child: const Text('Выбрать дату и создать'))),
                        ],
                      ),
                    );
                  });
            })));
  }
}
