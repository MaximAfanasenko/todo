import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:todo/base/services/profile_service.dart';

import '../models/profile.dart';

part 'profile_state.dart';
part 'profile_event.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this.profileService) : super(ProfileState.loading()) {
    bind();
  }

  bind() {
    on<_LoadEvent>((event, emit) async {
      var profile = await profileService.readProfile();

      if (profile == null) {
        return;
      }

      _name = profile.name;
      _surname = profile.surname;
      _profileImagePath = profile.profileImagePath;

      emit(ProfileState.editting(_name, _surname, _profileImagePath));
    });

    on<_SetImageEvent>((event, emit) async {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) {
        return;
      }

      _profileImagePath = image.path;

      var profile = Profile(
        name: _name,
        surname: _surname,
        profileImagePath: _profileImagePath,
      );

      await profileService.saveProfile(profile);

      emit(ProfileState.editting(_name, _surname, _profileImagePath));
    });

    on<_SaveEvent>((event, emit) async {
      var profile = Profile(
        name: event.name,
        surname: event.surname,
        profileImagePath: _profileImagePath,
      );

      await profileService.saveProfile(profile);

      emit(ProfileState.editting(_name, _surname, _profileImagePath));
    });
  }

  final ProfileService profileService;

  String _name = 'Имя';
  String _surname = 'Фамилия';
  String _profileImagePath = '';
}
