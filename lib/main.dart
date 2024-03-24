import 'package:flutter/material.dart';
import 'package:todo/base/cache/cache.dart';
import 'package:todo/base/di/di.dart';
import 'app.dart';

void main() async {

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView. 

  await configureDi();

  runApp(const MyApp());  

  var cache = getIt.get<Cache>();
  cache.initialize();

  //await Cache.initialize();
}
