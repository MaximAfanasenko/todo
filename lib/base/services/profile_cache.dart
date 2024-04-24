import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:todo/base/cache/cache.dart';

import 'package:todo/features/profile/models/profile.dart';

@singleton
class ProfileCache {
  ProfileCache({required this.cache});

  static const String profileCacheKey = 'ProfileCacheKey';

  final Cache cache;

  Future<void> saveProfile(Profile profile) async {
    await cache.setValue(profileCacheKey, profile);
  }

  Future<Profile?> readProfile() async {
    final profileDynamic = await cache.getString(profileCacheKey);

    if (profileDynamic == null) {
      return null;
    }

    final profileJson = jsonDecode(profileDynamic) as Map<String, dynamic>;
    final profile = Profile.fromJson(profileJson);
    return profile;
  }
}
