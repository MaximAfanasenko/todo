import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/features/profile/profile_view.dart';
import 'package:todo/features/tasks/add_task/add_task_view.dart';
import 'package:todo/features/tasks/task_list/tasks_list_view.dart';

import 'package:todo/generated/locale_keys.g.dart';

class Navigation extends StatefulWidget {
  const Navigation({required this.childScreen, super.key});

  final Widget childScreen;

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.appName.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              context.go(TasksListView.routeName + AddTaskView.routeName);
            },
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          if (index == 0) {
            context.go(TasksListView.routeName);
          }

          if (index == 1) {
            context.go(ProfileView.routeName);
          }

          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: const Icon(Icons.list),
            icon: const Icon(Icons.list_outlined),
            label: LocaleKeys.list.tr(),
          ),
          NavigationDestination(
            icon: const Badge(
              label: Text('2'),
              child: Icon(Icons.supervised_user_circle),
            ),
            label: LocaleKeys.profile.tr(),
          ),
        ],
      ),
      body: widget.childScreen,
    );
  }
}
