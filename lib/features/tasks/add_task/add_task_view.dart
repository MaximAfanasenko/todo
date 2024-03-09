import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:todo/features/tasks/add_task/add_screen_arguments.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        // Glue the SettingsController to the theme selection DropdownButton.
        //
        // When a user selects a theme from the dropdown list, the
        // SettingsController is updated, which rebuilds the MaterialApp.r
        child: Column(
          children: [
            TextField(
                decoration: const InputDecoration(hintText: "Заголовок"),
                maxLines: 1,
                controller: titleController),
            TextField(
                decoration: const InputDecoration(hintText: "Описание"),
                maxLines: 5,
                controller: textController),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () async {

                      var datePickingResult = await showDatePicker(
                          context: context,
                          firstDate:
                              DateTime.now().subtract(const Duration(days: 30)),
                          lastDate:
                              DateTime.now().add(const Duration(days: 60)));

                      var addScreenArguments = AddScreenArguments(
                          titleController.text, textController.text, datePickingResult!);

                      var addScreenArgumentsJson =
                          jsonEncode(addScreenArguments);

                      print(addScreenArgumentsJson);

                      Navigator.pop(context, addScreenArgumentsJson);
                    },
                    child: const Text('Выбрать дату и создать'))),
          ],
        ),
      ),
    );
  }
}
