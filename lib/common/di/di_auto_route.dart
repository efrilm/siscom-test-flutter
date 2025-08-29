import 'package:injectable/injectable.dart';

import '../../presentation/router/app_router.dart';

@module
abstract class AutoRouteDi {
  @lazySingleton
  AppRouter get appRouter => AppRouter();
}
