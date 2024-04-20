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
    on<_LoadEvent>((event, emit) async {
      emit(ProfileState.loading());
      
      var profile = await profileService.readProfile();

      if (profile == null) {
        return;
      }

      name = 'Имя: ${profile.name}';
      surname = 'Фамилия: ${profile.surname}';
      profileImagePath = profile.profileImagePath;

      emit(ProfileState.defaultState());
    });

    on<_SetImageEvent>((event, emit) async {
      emit(ProfileState.loading());

      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) {
        return;
      }

      profileImagePath = image.path;

      emit(ProfileState.defaultState());
    });

    on<_SaveEvent>((event, emit) async {
      emit(ProfileState.loading());

      var profile = Profile(
        name: event.name,
        surname: event.surname,
        profileImagePath: event.imagePath,
      );

      profileService.saveProfile(profile);

      emit(ProfileState.defaultState());
    });
  }

  final ProfileService profileService;

  String name = 'Имя';
  String surname = 'Фамилия';
  String profileImagePath = '';

  File get profileImage => File(profileImagePath);
}
