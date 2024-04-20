import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:todo/base/di/di.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDi();

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'EN'), Locale('ru', 'RU')],
      path: 'assets/translations', // <-- change the path of the translation files
      fallbackLocale: const Locale('ru', 'RU'),
      child: const MyApp(),
    ),
  );
}
