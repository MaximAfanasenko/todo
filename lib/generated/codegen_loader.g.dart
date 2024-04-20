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
  "title": "Заголовок",
  "description": "Описание",
  "chooseDateAndCreate": "Выбрать дату и создать",
  "chooseDateAndUpdate": "Выбрать дату и обновить",
  "chooseProfilePhoto": "Выбрать фото профиля",
  "save": "Сохранить",
  "chooseLanguage": "Сменить язык",
  "english": "Английский",
  "russian": "Русский",
  "chooseDate": "Выбрать дату",
  "createTask": "Создать задачу",
  "list": "Список",
  "profile": "Профиль"
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
  "chooseDateAndCreate": "Сhoose date and create",
  "chooseDateAndUpdate": "Сhoose date and update",
  "chooseProfilePhoto": "Choose profile photo",
  "save": "Save",
  "chooseLanguage": "Choose language",
  "english": "English",
  "russian": "Russian",
  "chooseDate": "Choose date",
  "createTask": "Create task",
  "list": "List",
  "profile": "Profile"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru_RU": ru_RU, "en_EN": en_EN};
}
