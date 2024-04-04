// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru_RU = {
  "appName": "Список дел",
  "noData": "Нет данных",
  "deleted": " - удален",
  "createOrChange": "Создать/Изменить",
  "create": "Создать",
  "change": "Изменить",
  "title": "Title",
  "description": "Описание",
  "chooseDateAndCreate": "Выбрать дату и создать",
  "chooseDateAndChange": "Выбрать дату и обновить"
};
static const Map<String,dynamic> en_EN = {
  "appName": "TODO",
  "noData": "No Data",
  "deleted": " - deleted",
  "createOrChange": "Create/Change",
  "create": "Create",
  "change": "Change",
  "title": "Title",
  "description": "Description",
  "chooseDateAndCreate": "Сhoose Date And Create",
  "chooseDateAndChange": "Сhoose Date And Change"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru_RU": ru_RU, "en_EN": en_EN};
}
