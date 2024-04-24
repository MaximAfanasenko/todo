import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:todo/base/router/router.dart';

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
