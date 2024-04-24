import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/base/di/di.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDi() async {
  getIt.init();
}

T inject<T extends Object>({
  String? instanceName,
}) =>
    getIt.get<T>(
      instanceName: instanceName,
    );
