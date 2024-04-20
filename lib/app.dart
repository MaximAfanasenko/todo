import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/generated/locale_keys.g.dart';
import 'package:todo/base/router/router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      restorationScopeId: 'app',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      routerConfig: router,
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key, required this.childScreen});

  final Widget childScreen;

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
              context.go('/tasks/addtask');
            },
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          if (index == 0) {
            context.go('/tasks');
          }

          if (index == 1) {
            context.go('/profile');
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
