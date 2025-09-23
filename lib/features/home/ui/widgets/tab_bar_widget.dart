import 'package:flutter/material.dart';
import 'package:my_anime_data/core/theming/colors.dart';
import 'package:my_anime_data/core/theming/text_styles.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: TabBar(
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        tabs: [
          Tab(text: 'All', height: 28),
          Tab(text: 'Popular', height: 28),
          Tab(text: 'Trending', height: 28),
          Tab(text: 'New Releases', height: 28),
          Tab(text: 'Top Rated', height: 28),
          Tab(text: 'Upcoming', height: 28),
        ],
        labelStyle: TextStyles.bold14,
        unselectedLabelStyle: TextStyles.bold14,
        unselectedLabelColor: ColorManager.primary,
        labelColor: Colors.white,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: ColorManager.primary,
        ),
      ),
    );
  }
}
