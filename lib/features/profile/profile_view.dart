import 'dart:io';

import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/base/di/di.dart';
import 'package:todo/features/profile/bloc/profile_bloc.dart';
import 'package:todo/features/profile/language_bottom_sheet.dart';
import 'package:todo/generated/locale_keys.g.dart';

class ProfileView extends StatefulWidget {
  static String get routeName => "/profile";

  @override
  State<StatefulWidget> createState() {
    return _ProfileViewState();
  }
}

class _ProfileViewState extends State<ProfileView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (_) => ProfileBloc(inject())..add(ProfileEvent.load()),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            editting: (name, surname, imagePath) {
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
                        child: imagePath.isEmpty
                            ? const Icon(Icons.camera)
                            : Image.file(
                                fit: BoxFit.cover,
                                height: 300,
                                width: 300,
                                File(imagePath),
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
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: name,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: surnameController,
                        decoration: InputDecoration(
                          hintText: surname,
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
                                    nameController.text,
                                    surnameController.text,
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
                          onPressed: () =>
                              showModalLanguageBottomSheet(context),
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
