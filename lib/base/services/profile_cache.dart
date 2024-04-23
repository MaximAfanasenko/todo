import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:todo/base/cache/cache.dart';

import '../../features/profile/models/profile.dart';

@singleton
class ProfileCache {
  static const String ProfileCacheKey = "ProfileCacheKey";

  final Cache cache;

  ProfileCache({required this.cache});

  Future saveProfile(Profile profile) async {
    // var profile = await readProfile();

    // if (profile == null) {

    // }

    await cache.setValue(ProfileCacheKey, profile);
  }

  Future<Profile?> readProfile() async {
    var profileDynamic = await cache.getValue(ProfileCacheKey);

    if (profileDynamic == null) {
      return null;
    }

    var profileJson = jsonDecode(profileDynamic);
    

    if (profileDynamic != null) {
      var profile = Profile.fromJson(profileJson);
      return profile;

    } else {
      return null;
    }
  }
}
