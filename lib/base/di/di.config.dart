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
import 'package:todo/features/tasks/tasks_cache.dart' as _i4;
import 'package:todo/features/tasks/tasks_service.dart' as _i5;

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
    gh.singleton<_i3.Cache>(_i3.Cache());
    gh.singleton<_i4.TasksCache>(_i4.TasksCache(cache: gh<_i3.Cache>()));
    gh.singleton<_i5.TasksService>(
        _i5.TasksService(tasksCache: gh<_i4.TasksCache>()));
    return this;
  }
}
