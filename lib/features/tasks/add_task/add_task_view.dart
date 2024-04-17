import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/base/di/di.dart';
import 'package:todo/features/tasks/add_task/bloc/add_task_bloc.dart';
import 'package:todo/features/tasks/models/todo.dart';
import 'package:todo/features/tasks/task_list/bloc/tasks_bloc.dart';
import 'package:todo/generated/locale_keys.g.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class AddTaskView extends StatelessWidget {
  AddTaskView({super.key});

  //static const routeName = '/edittask';

  @override
  Widget build(BuildContext context) {
    Todo? args;

    try {
      args = ModalRoute.of(context)?.settings.arguments as Todo?;
    } catch (e) {}

    return BlocProvider<AddTaskBloc>(
      create: (_) => AddTaskBloc(inject(), args),
      child: BlocConsumer<AddTaskBloc, AddTaskState>(
        listenWhen: (previous, current) => current == AddTaskState.completed(),
        buildWhen: (previous, current) =>
            current == AddTaskState.fillingFields() ||
            current == AddTaskState.loading(),
        listener: (context, state) {
          state.when(
            loading: () => {},
            fillingFields: () => {},
            completed: () => {
              Navigator.pop(context),
            },
          );
        },
        builder: (context, state) {
          return state.when(
            completed: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            fillingFields: () {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: LocaleKeys.title.tr(),
                      ),
                      maxLines: 1,
                      controller: context.read<AddTaskBloc>().titleController,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: LocaleKeys.description.tr(),
                      ),
                      maxLines: 5,
                      controller: context.read<AddTaskBloc>().textController,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () async {
                          var datePickingResult = await showDatePicker(
                            context: context,
                            firstDate: DateTime.now().subtract(
                              const Duration(days: 30),
                            ),
                            lastDate:
                                DateTime.now().add(const Duration(days: 60)),
                          );

                          if (datePickingResult == null) {
                            return;
                          }

                          if (!context.mounted) return;

                          context.read<AddTaskBloc>().add(
                                AddTaskEvent.setDateTime(
                                  datePickingResult,
                                ),
                              );
                        },
                        child: Text("Выбрать дату"
                            //LocaleKeys.chooseDateAndCreate.tr(),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () async {
                          if (!context.mounted) return;

                          context.read<AddTaskBloc>().add(
                                AddTaskEvent.saveTodo(),
                              );
                        },
                        child: Text("Создать задачу"
                            //LocaleKeys.chooseDateAndCreate.tr(),
                            ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
