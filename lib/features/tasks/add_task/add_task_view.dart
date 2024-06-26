import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/base/di/di.dart';
import 'package:todo/features/tasks/add_task/bloc/add_task_bloc.dart';
import 'package:todo/generated/locale_keys.g.dart';

class AddTaskView extends StatefulWidget {
  const AddTaskView({super.key, this.todoId});

  static String get routeName => '/addtask';
  final String? todoId;

  @override
  State<StatefulWidget> createState() {
    return _AddTaskViewState();
  }
}

class _AddTaskViewState extends State<AddTaskView> {
  final titleController = TextEditingController();
  final textController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddTaskBloc>(
      create: (_) =>
          AddTaskBloc(inject(), widget.todoId)..add(AddTaskEvent.loadData()),
      child: BlocConsumer<AddTaskBloc, AddTaskState>(
        listenWhen: (previous, current) => current == AddTaskState.completed(),
        buildWhen: (previous, current) => current != AddTaskState.completed(),
        listener: (context, state) {
          state.when(
            loading: () => {},
            creating: () => {},
            editing: (t) => {},
            completed: () => {
              Navigator.pop(context),
            },
          );
        },
        builder: (context, state) {
          return state.when(
            completed: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            editing: (todo) {
              titleController.text = todo.name;
              textController.text = todo.description;
              return createScreen(context);
            },
            creating: () => createScreen(context),
          );
        },
      ),
    );
  }

  Widget createScreen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: LocaleKeys.title.tr(),
            ),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: LocaleKeys.description.tr(),
            ),
            maxLines: 5,
            controller: textController,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () async {
                final datePickingResult = await showDatePicker(
                  context: context,
                  firstDate: DateTime.now().subtract(
                    const Duration(days: 30),
                  ),
                  lastDate: DateTime.now().add(const Duration(days: 60)),
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
              child: Text(
                LocaleKeys.chooseDate.tr(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () async {
                if (!context.mounted) return;

                context.read<AddTaskBloc>().add(
                      AddTaskEvent.saveTodo(
                        titleController.text,
                        textController.text,
                      ),
                    );
              },
              child: Text(
                LocaleKeys.createTask.tr(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
