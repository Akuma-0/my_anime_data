import 'package:flutter/material.dart';
import 'package:my_anime_data/features/home/ui/widgets/nav_bar_item.dart';

class HomeScreenBottomNavBar extends StatefulWidget {
  const HomeScreenBottomNavBar({super.key});

  @override
  State<HomeScreenBottomNavBar> createState() => _HomeScreenBottomNavBarState();
}

class _HomeScreenBottomNavBarState extends State<HomeScreenBottomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374,
      height: 98,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarItem(
            isSelected: currentIndex == 0,
            image: 'assets/images/home.svg',
            name: 'Home',
          ),
          NavBarItem(
            isSelected: currentIndex == 1,
            image: 'assets/images/Group.svg',
            name: 'Groups',
          ),
          NavBarItem(
            isSelected: currentIndex == 2,
            image: 'assets/images/search.svg',
            name: 'Search',
          ),
          NavBarItem(
            isSelected: currentIndex == 3,
            image: 'assets/images/globe.svg',
            name: 'Ranking',
          ),
          NavBarItem(
            isSelected: currentIndex == 4,
            image: 'assets/images/setting.svg',
            name: 'Settings',
          ),
        ],
      ),
    );
  }
}
