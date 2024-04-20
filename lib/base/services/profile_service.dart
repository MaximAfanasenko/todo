import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:todo/base/services/tasks_cache.dart';
import 'package:todo/features/profile/models/profile.dart';

import 'profile_cache.dart';

@singleton
class ProfileService {
  final ProfileCache profileCache;

  ProfileService({required this.profileCache});

  Future<Profile?> readProfile() async {
    final data = await profileCache.readProfile();
    return data;
  }

  Future saveProfile(Profile profile) async {
    await profileCache.saveProfile(profile);
  }
}
