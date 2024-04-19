part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  factory ProfileEvent.save(String name, String surname, String imagePath) = _SaveEvent;
  factory ProfileEvent.setImage() = _SetImageEvent;
}
