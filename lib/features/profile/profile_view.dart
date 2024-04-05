import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/base/di/di.dart';
import 'package:todo/features/tasks/add_task/add_screen_arguments.dart';
import 'package:todo/features/tasks/task_list/bloc/tasks_bloc.dart';
import 'package:todo/generated/locale_keys.g.dart';

import 'package:easy_localization/easy_localization.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Выбор языка",
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(
            height: 20,
          ),

          SizedBox(
            height: 56,
            child: ElevatedButton(
              onPressed: () => {
                context.setLocale(const Locale('en', 'EN')),
              },
              child: const Text("Английский"),
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          SizedBox(
            height: 56,
            child: ElevatedButton(
              onPressed: () => {
                context.setLocale(const Locale('ru', 'RU')),
              },
              child: const Text("Русский"),
            ),
          ),
        ],
      ),
    );
  }
}
