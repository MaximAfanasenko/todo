
import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  final String name;
  final String surname;
  final String imageBytesInBase64;

  Profile({
    required this.name,
    required this.surname,
    required this.imageBytesInBase64,
  });

  /// Connect the generated [_$ProfileFromJson] function to the `fromJson`
  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

  /// Connect the generated [_$TodoToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}