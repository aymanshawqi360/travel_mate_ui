import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_mate_ui/config/constants/categories.dart';
import 'package:travel_mate_ui/features/home/presentation/cubit/travel_mate_cubit.dart';
import 'package:travel_mate_ui/features/home/presentation/widget/category/category.dart';

class ListCategories extends StatelessWidget {
  final List<Categories> listCategories;
  const ListCategories({super.key, required this.listCategories});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(listCategories.length, (index) {
        return GestureDetector(
          onTap: () {
            context.read<TravelMateCubit>().onTapCategory(id: index);
          },
          child: Category(index: index, appCategories: listCategories[index]),
        );
      }),
    );
  }
}
