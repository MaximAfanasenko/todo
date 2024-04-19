part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState.loading() = _LoadingState;
  factory ProfileState.defaultState() = _DefaultState;
}