part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  factory ProfileEvent.save() = _SaveEvent;
  factory ProfileEvent.setImage() = _SetImageEvent;
}
