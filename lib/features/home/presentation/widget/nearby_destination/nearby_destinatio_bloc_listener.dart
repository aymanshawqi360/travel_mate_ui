import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/travel_mate_cubit.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/travel_mate_state.dart';
import 'package:travel_mate_ui/features/home/presentation/widget/nearby_destination/list_nearby_destination.dart';

class NearbyDestinatioBlocListener extends StatefulWidget {
  const NearbyDestinatioBlocListener({super.key});

  @override
  State<NearbyDestinatioBlocListener> createState() =>
      _NearbyDestinatioBlocListenerState();
}

class _NearbyDestinatioBlocListenerState
    extends State<NearbyDestinatioBlocListener> {
  @override
  void initState() {
    context.read<TravelMateCubit>().viewListHotel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TravelMateCubit, TravelMateState>(
      buildWhen: (previous, current) => current is HotelSuccess,
      builder: (context, state) {
        switch (state) {
          case HotelSuccess():
            return _buildSuccessState(state);
          // case CategoriesLoading():
          //   return _buildLoadingState();
          default:
            return Center(child: Text("Error"));
        }
      },
    );
  }

  Widget _buildSuccessState(HotelSuccess state) {
    return ListNearbyDestination(listHotel: state.listHotel);
  }

  // Widget _buildLoadingState() {
  //   return CircularProgressIndicator();
  // }
}
