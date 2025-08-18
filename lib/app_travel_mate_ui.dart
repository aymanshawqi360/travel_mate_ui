import 'package:flutter/material.dart';
import 'package:travel_mate_ui/config/routing/app_router.dart';
import 'package:travel_mate_ui/core/utils/hex_color.dart';

class AppTravelMateUi extends StatelessWidget {
  final AppRouter appRouter;
  const AppTravelMateUi({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: HexColor(hexColor: "E9ECF1"),
      ),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
