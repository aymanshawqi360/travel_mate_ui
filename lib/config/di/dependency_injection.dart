import 'package:get_it/get_it.dart';
import 'package:travel_mate_ui/config/constants/list_category.dart';
import 'package:travel_mate_ui/config/constants/list_hotel.dart';
import 'package:travel_mate_ui/config/constants/list_popular_place.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/cubit/travel_mate_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //!Constants
  getIt.registerLazySingleton<ListCategory>(() => ListCategory());
  getIt.registerLazySingleton<ListHotel>(() => ListHotel());
  getIt.registerLazySingleton<ListPopularPlace>(() => ListPopularPlace());

  //! Presentation//Cubit
  getIt.registerFactory<TravelMateCubit>(
    () => TravelMateCubit(
      listHotel: getIt(),
      listCategory: getIt(),
      listPopularPlace: getIt(),
    ),
  );
}
