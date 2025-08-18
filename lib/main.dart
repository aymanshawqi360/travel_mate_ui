import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_mate_ui/app_travel_mate_ui.dart';
import 'package:travel_mate_ui/config/di/dependency_injection.dart';
import 'package:travel_mate_ui/config/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await setupGetIt();
  runApp(AppTravelMateUi(appRouter: AppRouter()));
}
