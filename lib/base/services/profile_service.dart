import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:todo/base/services/profile_cache.dart';
import 'package:todo/features/profile/models/profile.dart';

@singleton
class ProfileService {
  ProfileService({required this.profileCache});

  final ProfileCache profileCache;

  Future<Profile?> readProfile() async {
    final data = await profileCache.readProfile();
    return data;
  }

  Future<void> saveProfile(Profile profile) async {
    await profileCache.saveProfile(profile);
  }
}
