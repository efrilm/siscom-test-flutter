import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'presentation/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  if (kReleaseMode) {
    debugPrint = (message, {wrapWidth}) => '';
  }

  await configureDependencies(
    kReleaseMode ? Environment.prod : Environment.dev,
  );

  runApp(const AppWidget());
}
