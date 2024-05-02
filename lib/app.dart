import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:todo/base/router/router.dart';
import 'package:todo/theme/app_theme.dart';
import 'package:todo/theme/app_inherited_widget.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> { 

  ThemeMode themeMode = ThemeMode.light;

  void toggleThemeMode() {
    setState(() {
      themeMode =
          themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeInheritedWidget(
      toggleThemeMode: toggleThemeMode,
      child: MaterialApp.router(
        restorationScopeId: 'app',
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        
        theme: ThemeData.light().copyWith(
          extensions: <ThemeExtension<dynamic>>[
            const AppTheme(
              brandColor: Color(0xFF1E88E5),
              danger: Color(0xFFE53935),
            ),
          ],
        ),
        darkTheme: ThemeData.dark().copyWith(
          extensions: <ThemeExtension<dynamic>>[
            const AppTheme(
              brandColor: Color(0xFF90CAF9),
              danger: Color(0xFFEF9A9A),
            ),
          ],
        ),
        themeMode: themeMode,
        routerConfig: router,
      ),
    );
  }
}
