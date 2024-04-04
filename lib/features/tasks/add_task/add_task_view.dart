import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/base/di/di.dart';
import 'package:todo/features/tasks/add_task/add_screen_arguments.dart';
import 'package:todo/features/tasks/add_task/bloc/add_task_bloc.dart';
import 'package:todo/features/tasks/models/todo.dart';
import 'package:todo/generated/locale_keys.g.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class AddTaskView extends StatelessWidget {
  AddTaskView({super.key});

  static const routeName = '/edittask';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Todo?;

    return BlocProvider<AddTaskBloc>(
        create: (_) => AddTaskBloc(inject(), args),
        child: Scaffold(
            appBar: AppBar(
              title: Text(LocaleKeys.createOrChange.tr()),
            ),
            body: BlocBuilder<AddTaskBloc, AddTaskState>(
                builder: (context, state) {
              return state.when(
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  fillingFields: () {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          TextField(
                              decoration:
                                  InputDecoration(hintText: context.read<AddTaskBloc>().todoTitleText),
                              maxLines: 1,
                              controller:
                                  context.read<AddTaskBloc>().titleController),
                          TextField(
                              decoration:
                                  InputDecoration(hintText: context.read<AddTaskBloc>().todoDescriptionText),
                              maxLines: 5,
                              controller:
                                  context.read<AddTaskBloc>().textController),
                          Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: ElevatedButton(
                                  onPressed: () async {
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

                                    if (!context.mounted) return;

                                    context.read<AddTaskBloc>().add(
                                        AddTaskEvent.addingTask(
                                            datePickingResult));

                                    Navigator.pop(context);
                                  },
                                  child: Text(context
                                      .read<AddTaskBloc>()
                                      .createButtonText))),
                        ],
                      ),
                    );
                  });
            })));
  }
}
