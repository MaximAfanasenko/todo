// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:todo/base/cache/cache.dart' as _i3;
import 'package:todo/base/images/image_picker_service.dart' as _i4;
import 'package:todo/base/services/profile_cache.dart' as _i5;
import 'package:todo/base/services/profile_service.dart' as _i6;
import 'package:todo/base/services/tasks_cache.dart' as _i7;
import 'package:todo/base/services/tasks_service.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singletonAsync<_i3.Cache>(() {
      final i = _i3.Cache();
      return i.init().then((_) => i);
    });
    gh.singleton<_i4.ImagePickerService>(_i4.ImagePickerService());
    gh.singletonAsync<_i5.ProfileCache>(
        () async => _i5.ProfileCache(cache: await getAsync<_i3.Cache>()));
    gh.singletonAsync<_i6.ProfileService>(() async =>
        _i6.ProfileService(profileCache: await getAsync<_i5.ProfileCache>()));
    gh.singletonAsync<_i7.TasksCache>(
        () async => _i7.TasksCache(cache: await getAsync<_i3.Cache>()));
    gh.singletonAsync<_i8.TasksService>(() async =>
        _i8.TasksService(tasksCache: await getAsync<_i7.TasksCache>()));
    return this;
  }
}
