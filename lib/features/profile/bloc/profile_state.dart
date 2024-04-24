part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState.loading() = _LoadingState;
  factory ProfileState.display(
      String name, String surname, Uint8List imageBytes) = _DisplayState;
}
