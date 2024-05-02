import 'dart:typed_data';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/base/di/di.dart';
import 'package:todo/features/profile/bloc/profile_bloc.dart';
import 'package:todo/features/profile/language_bottom_sheet.dart';
import 'package:todo/generated/locale_keys.g.dart';
import 'package:todo/theme/theme_inherited_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  static String get routeName => '/profile';

  @override
  State<StatefulWidget> createState() {
    return _ProfileViewState();
  }
}

class _ProfileViewState extends State<ProfileView> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (_) => ProfileBloc(inject(), inject())..add(ProfileEvent.load()),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            display: (name, surname, imageBytes) =>
                buildProfileView(context, imageBytes),
          );
        },
        listener: (context, state) {
          state.when(
            loading: () {},
            display: (name, surname, imageBytes) {
              nameController.text = name;
              surnameController.text = surname;
            },
          );
        },
      ),
    );
  }

  Widget buildProfileView(BuildContext context, Uint8List imageBytes) {
    return SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ClipOval(
              child: imageBytes.isEmpty
                  ? const Icon(Icons.camera)
                  : Image.memory(
                      fit: BoxFit.cover,
                      height: 300,
                      width: 300,
                      imageBytes,
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
                  context.read<ProfileBloc>().add(ProfileEvent.setImage()),
                },
                child: Text(LocaleKeys.chooseProfilePhoto.tr()),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: nameController,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: surnameController,
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
            SizedBox(
              height: 56,
              child: ElevatedButton(
                onPressed: () => {
                  ThemeInheritedWidget.of(context)!.toggleThemeMode()
                },
                child: Text("Переключить тему"),
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
                onPressed: () => showModalLanguageBottomSheet(context),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
