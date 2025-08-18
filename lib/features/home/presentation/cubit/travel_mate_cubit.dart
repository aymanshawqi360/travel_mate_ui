import 'package:bloc/bloc.dart';
import 'package:travel_mate_ui/config/constants/list_category.dart';
import 'package:travel_mate_ui/config/constants/list_hotel.dart';
import 'package:travel_mate_ui/config/constants/list_popular_place.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/travel_mate_state.dart';

class TravelMateCubit extends Cubit<TravelMateState> {
  final ListCategory listCategory;
  final ListHotel listHotel;
  final ListPopularPlace listPopularPlace;
  TravelMateCubit({
    required this.listCategory,
    required this.listHotel,
    required this.listPopularPlace,
  }) : super(TravelMateInitial());

  void viewListCategories() {
    //  final response = categories;
    emit(CategoriesSuccess(listCategories: listCategory.categories));
  }

  void viewListHotel() {
    // emit(CategoriesLoading());
    // Future.delayed(Duration(seconds: 2));

    emit(HotelSuccess(listHotel: listHotel.hotels));
  }

  void getListPopularPlace() {
    emit(GetPopularPlace(listPopularPlace: listPopularPlace.listpopularPlace));
  }

  int index = 0;
  void onTapCategory({required int id}) {
    index = id;
    emit(OnTapCategory());
  }
}
