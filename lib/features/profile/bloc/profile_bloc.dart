import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'profile_state.dart';
part 'profile_event.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> 
{
  ProfileBloc(super.initialState) {

    on<_SaveEvent>((event, emit) async {
      var picker = ImagePicker();
// Pick an image.
      var image = await picker.pickImage(source: ImageSource.gallery);

      var a = image;
    });
  }  
}
