import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_mate_ui/config/constants/list_popular_place.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/travel_mate_cubit.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/travel_mate_state.dart';
import 'package:travel_mate_ui/features/home/presentation/widget/Popular_Place/view_list_popular_place.dart';

class PopularPlaceBlocListener extends StatefulWidget {
  const PopularPlaceBlocListener({super.key});

  @override
  State<PopularPlaceBlocListener> createState() =>
      _PopularPlaceBlocListenerState();
}

class _PopularPlaceBlocListenerState extends State<PopularPlaceBlocListener> {
  @override
  void initState() {
    context.read<TravelMateCubit>().getListPopularPlace();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TravelMateCubit, TravelMateState>(
      buildWhen: (previous, current) => current is GetPopularPlace,
      builder: (context, state) {
        switch (state) {
          case GetPopularPlace():
            return _buildSuccessState(state);
          // case CategoriesLoading():
          //   return _buildLoadingState();
          default:
            return Center(child: Text("Error"));
        }
      },
    );
  }

  Widget _buildSuccessState(GetPopularPlace state) {
    return ViewListPopularPlace(listPopularPlace: state.listPopularPlace);
  }
}
