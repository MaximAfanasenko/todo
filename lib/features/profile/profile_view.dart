
import 'package:flutter/material.dart';

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
