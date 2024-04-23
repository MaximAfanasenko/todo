part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  factory ProfileEvent.load() = _LoadEvent;
  factory ProfileEvent.setImage() = _SetImageEvent;
  factory ProfileEvent.save(String name, String surname) = _SaveEvent;  
}
