import 'package:flutter/material.dart';
import 'package:travel_mate_ui/config/constants/popular_place.dart';
import 'package:travel_mate_ui/core/utils/extensions.dart';
import 'package:travel_mate_ui/core/widget/app_list_view.dart';
import 'package:travel_mate_ui/features/home/presentation/widget/Popular_Place/popular_place_item.dart';

class ViewListPopularPlace extends StatelessWidget {
  final List<PopularPlace> listPopularPlace;
  const ViewListPopularPlace({super.key, required this.listPopularPlace});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: listPopularPlace.length,

        (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: context.screenHeight / 35),
            child: PopularPlaceItem(placeItem: listPopularPlace[index]),
          );
        },
      ),
    );
    //  AppListView(
    //   shrinkWrap: true,
    //   physics: NeverScrollableScrollPhysics(),
    //   itemCount: listPopularPlace.length,
    //   itemBuilder: (context, index) {
    //     return

    //   },
    // );
  }
}
