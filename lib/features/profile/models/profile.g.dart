// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      name: json['name'] as String,
      surname: json['surname'] as String,
      imageBytesInBase64: json['imageBytesInBase64'] as String,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'imageBytesInBase64': instance.imageBytesInBase64,
    };
