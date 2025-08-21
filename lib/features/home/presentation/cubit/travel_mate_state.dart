import 'package:travel_mate_ui/config/constants/categories.dart';
import 'package:travel_mate_ui/config/constants/hotel.dart';
import 'package:travel_mate_ui/config/constants/popular_place.dart';

sealed class TravelMateState {}

class TravelMateInitial extends TravelMateState {}

class CategoriesLoading extends TravelMateState {}

class CategoriesSuccess extends TravelMateState {
  final List<Categories> listCategories;

  CategoriesSuccess({required this.listCategories});
}

class HotelSuccess extends TravelMateState {
  final List<Hotel> listHotel;

  HotelSuccess({required this.listHotel});
}

class GetPopularPlace extends TravelMateState {
  final List<PopularPlace> listPopularPlace;

  GetPopularPlace({required this.listPopularPlace});
}

class OnTapCategory extends TravelMateState {}

class OnTapFavorite extends TravelMateState {}
