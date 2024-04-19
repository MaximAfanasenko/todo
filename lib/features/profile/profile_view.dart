import 'dart:io';

import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/base/di/di.dart';
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
      create: (_) => ProfileBloc(inject(), ProfileState.loading())
        ..add(ProfileEvent.load()),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            defaultState: () {
              return SingleChildScrollView(
                child: Padding(
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
                      SizedBox(
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () => {
                            context
                                .read<ProfileBloc>()
                                .add(ProfileEvent.setImage()),
                          },
                          child: const Text("Выбрать фото профиля"),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: widget.nameController,
                        decoration: InputDecoration(
                            hintText: context.read<ProfileBloc>().name),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: widget.surnameController,
                        decoration: InputDecoration(
                            hintText: context.read<ProfileBloc>().surname),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () => {
                            context.read<ProfileBloc>().add(
                                  ProfileEvent.save(
                                    widget.nameController.text,
                                    widget.surnameController.text,
                                    context
                                        .read<ProfileBloc>()
                                        .profileImagePath,
                                  ),
                                ),
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
