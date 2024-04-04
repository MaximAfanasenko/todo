import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:todo/base/cache/cache.dart';
import 'package:todo/base/di/di.dart';
import 'app.dart';

void main() async {

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView. 

  await configureDi();

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'EN'), Locale('ru', 'RU')],
      path: 'assets/translations', // <-- change the path of the translation files 
      fallbackLocale: const Locale('ru', 'RU'),
      child: const MyApp()
    ));  

  var cache = getIt.get<Cache>();
  cache.initialize();

  //await Cache.initialize();
}
