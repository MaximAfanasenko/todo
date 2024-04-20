import 'dart:io';

import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/base/di/di.dart';
import 'package:todo/features/profile/bloc/profile_bloc.dart';
import 'package:todo/generated/locale_keys.g.dart';

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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      ClipOval(
                        child: Image.file(
                          fit: BoxFit.cover,
                          height: 300,
                          width: 300,
                          context.read<ProfileBloc>().profileImage,
                          color: Colors.lightGreen,
                          colorBlendMode: BlendMode.difference,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
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
                          child: Text(LocaleKeys.chooseProfilePhoto.tr()),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: widget.nameController,
                        decoration: InputDecoration(
                          hintText: context.read<ProfileBloc>().name,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: widget.surnameController,
                        decoration: InputDecoration(
                          hintText: context.read<ProfileBloc>().surname,
                        ),
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
                          child: Text(LocaleKeys.save.tr()),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        LocaleKeys.chooseLanguage.tr(),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 56,
                        child: ElevatedButton(
                          child: Text(LocaleKeys.chooseLanguage.tr()),
                          onPressed: () => {
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                            ),
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 100,
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
