import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/base/images/image_picker_service.dart';
import 'package:todo/base/services/profile_service.dart';

import '../models/profile.dart';

part 'profile_state.dart';
part 'profile_event.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._profileService, this._imagePickerService) : super(ProfileState.loading()) {
    bind();
  }

  bind() {
    on<_LoadEvent>((event, emit) async {
      var profile = await _profileService.readProfile();      

      _name = profile?.name ?? '';
      _surname = profile?.surname ?? ''; 
      _imageBytesInBase64 = profile?.imageBytesInBase64 ?? '';

      emit(ProfileState.display(_name, _surname, _imageBytes));
    });

    on<_SetImageEvent>((event, emit) async {
      var image = await _imagePickerService.pickImage();
      if (image == null) {
        return;
      }

      var imageBytes = await image.readAsBytes();     

      _imageBytesInBase64 = base64Encode(imageBytes);

      var profile = Profile(
        name: _name,
        surname: _surname,
        imageBytesInBase64: _imageBytesInBase64,
      );

      await _profileService.saveProfile(profile);

      emit(ProfileState.display(_name, _surname, _imageBytes));
    });

    on<_SaveEvent>((event, emit) async {
      var profile = Profile(
        name: event.name,
        surname: event.surname,
        imageBytesInBase64: _imageBytesInBase64,
      );

      await _profileService.saveProfile(profile);

      emit(ProfileState.display(_name, _surname, _imageBytes));
    });
  }

  final ProfileService _profileService;
  final ImagePickerService _imagePickerService;

  String _name = 'Имя';
  String _surname = 'Фамилия';
  String _imageBytesInBase64 = '';
  Uint8List get _imageBytes => base64Decode(_imageBytesInBase64); 
}
