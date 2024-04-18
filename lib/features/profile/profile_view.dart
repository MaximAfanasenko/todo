import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/profile/bloc/profile_bloc.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (_) => ProfileBloc(ProfileState.defaultState()),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.when(
            defaultState: () {
              
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
            },
          );
        },
        listener: (context, state) => {},
      ),
    );
  }
}
