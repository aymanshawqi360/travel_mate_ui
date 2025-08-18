import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/travel_mate_cubit.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/travel_mate_state.dart';
import 'package:travel_mate_ui/features/home/presentation/widget/category/list_categories.dart';

class CategoryBlocListener extends StatelessWidget {
  const CategoryBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TravelMateCubit, TravelMateState>(
      buildWhen: (previous, current) => current is CategoriesSuccess,
      builder: (context, state) {
        switch (state) {
          case CategoriesSuccess():
            return _buildSuccessState(state);

          default:
            return Center(child: Text("Error Category"));
        }
      },
    );
  }

  Widget _buildSuccessState(CategoriesSuccess state) {
    return ListCategories(listCategories: state.listCategories);
  }
}
