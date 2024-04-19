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
  ProfileBloc(this.profileService, super.initialState) {
    on<_SetImageEvent>((event, emit) async {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) {
        return;
      }

      profileImagePath = image.path;
      profileImage = File(image.path);

      emit(ProfileState.defaultState());
    });

    on<_SaveEvent>((event, emit) async {
      var profile = Profile(
        name: event.name,
        surname: event.surname,
        profileImagePath: event.imagePath,
      );

      profileService.saveProfile(profile);
    });
  }

  final ProfileService profileService;

  String profileImagePath = '';
  File profileImage = File('');
}
