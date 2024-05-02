import 'package:flutter/material.dart';

class ThemeInheritedWidget extends InheritedWidget {
  ThemeInheritedWidget({
    Key? key,
    required this.toggleThemeMode,
    required Widget child,
  }) : super(key: key, child: child);

  final Function toggleThemeMode;

  static ThemeInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeInheritedWidget>();
  }

  @override
  bool updateShouldNotify(ThemeInheritedWidget oldWidget) {
    return false;
  }
}
