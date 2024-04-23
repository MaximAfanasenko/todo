part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState.loading() = _LoadingState;
  factory ProfileState.editting(String name, String surname, String imagePath) = _DefaultState;
}