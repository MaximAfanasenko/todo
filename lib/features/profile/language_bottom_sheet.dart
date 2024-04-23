import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:todo/generated/locale_keys.g.dart';

showModalLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(40),
          ),
        ),
        height: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(LocaleKeys.chooseLanguage.tr()),
              ElevatedButton(
                child: Text(LocaleKeys.english.tr()),
                onPressed: () {
                  context.setLocale(
                    const Locale('en', 'EN'),
                  );
                  Navigator.pop(context);
                },
              ),
              ElevatedButton(
                child: Text(LocaleKeys.russian.tr()),
                onPressed: () {
                  context.setLocale(
                    const Locale('ru', 'RU'),
                  );
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
