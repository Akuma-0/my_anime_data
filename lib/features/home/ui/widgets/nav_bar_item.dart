import 'package:flutter/material.dart';
import 'package:my_anime_data/features/home/ui/widgets/nav_bar_active_item.dart';
import 'package:my_anime_data/features/home/ui/widgets/nav_bar_inactive_item.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({super.key, required this.isSelected, required this.image, required this.name});
  final bool isSelected;
  final String image, name;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            image: image,
            name: name,
          )
        : InactiveItem(image: image);
  }
}
