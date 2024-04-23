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

      name = profile.name;
      surname = profile.surname;
      profileImagePath = profile.profileImagePath;

      emit(ProfileState.editting(name, surname, profileImagePath));
    });

    on<_SetImageEvent>((event, emit) async {
      

      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) {
        return;
      }

      profileImagePath = image.path;

      var profile = Profile(
        name: name,
        surname: surname,
        profileImagePath: profileImagePath,
      );

      await profileService.saveProfile(profile);

      emit(ProfileState.editting(name, surname, profileImagePath));
    });

    on<_SaveEvent>((event, emit) async {     

      var profile = Profile(
        name: event.name,
        surname: event.surname,
        profileImagePath: profileImagePath,
      );

      await profileService.saveProfile(profile);

      emit(ProfileState.editting(name, surname, profileImagePath));
    });
  }

  final ProfileService profileService;

  String name = 'Имя';
  String surname = 'Фамилия';
  String profileImagePath = '';
}
