import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_mate_ui/config/di/dependency_injection.dart';
import 'package:travel_mate_ui/config/routing/routes.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/cubit/travel_mate_cubit.dart';
import 'package:travel_mate_ui/features/home/presentation/screen/home_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<TravelMateCubit>()..viewListCategories(),
            child: HomeScreen(),
          ),
        );
      default:
        // return null;
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Text("Page not found")),
        );
    }
  }
}
