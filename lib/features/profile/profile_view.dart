import 'dart:io';

import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/features/profile/bloc/profile_bloc.dart';

class ProfileView extends StatefulWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();

  @override
  State<StatefulWidget> createState() {
    return _ProfileViewState();
  }
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void dispose() {
    widget.nameController.dispose();
    widget.surnameController.dispose();
    super.dispose();
  }

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
                    const SizedBox(
                      height: 20,
                    ),
                    Image.file(context.read<ProfileBloc>().profileImage),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: widget.nameController,
                      decoration: InputDecoration(hintText: "Имя"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: widget.surnameController,
                      decoration: InputDecoration(hintText: "Фамилия"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () => {
                          context.read<ProfileBloc>().add(ProfileEvent.save()),
                        },
                        child: const Text("Сохранить"),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
