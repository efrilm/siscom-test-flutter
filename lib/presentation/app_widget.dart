import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/item/item_form/item_form_bloc.dart';
import '../application/item/item_loader/item_loader_bloc.dart';
import '../common/theme/theme.dart';
import '../common/constant/app_constant.dart';
import '../injection.dart';
import 'router/app_router.dart';
import 'router/app_router_observer.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<ItemLoaderBloc>()),
        BlocProvider(create: (context) => getIt<ItemFormBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: AppConstant.appName,
        theme: ThemeApp.theme,
        routerConfig: _appRouter.config(
          navigatorObservers: () => <NavigatorObserver>[AppRouteObserver()],
        ),
      ),
    );
  }
}
