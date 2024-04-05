// ignore_for_file: require_trailing_commas

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:todo/features/profile/profile_view.dart';
import 'package:todo/generated/locale_keys.g.dart';

import 'features/tasks/task_list/tasks_list_view.dart';
import 'features/tasks/add_task/add_task_view.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',      
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      home: const NavigationExample(),

      // Define a function to handle named routes in order to support
      // Flutter web url navigation and deep linking.
      // onGenerateRoute: (RouteSettings routeSettings) {
      //   return MaterialPageRoute<void>(
      //     settings: routeSettings,
      //     builder: (BuildContext context) {
      //       switch (routeSettings.name) {
      //         case AddTaskView.routeName:
      //           return AddTaskView();
      //         case TasksListView.routeName:
      //         default:
      //           return TasksListView();
      //       }
      //     },
      //   );
      // },
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
            title: Text(LocaleKeys.appName.tr()),
            actions: [
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  Navigator.pushNamed(context, AddTaskView.routeName);
                },
              ),
            ],
          ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'List',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Add',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp),
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        TasksListView(),
        AddTaskView(),
        ProfileView()
      ][currentPageIndex],
    );
  }
}
