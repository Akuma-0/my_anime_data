import 'package:flutter/material.dart';
import 'package:my_anime_data/core/theming/colors.dart';
import 'package:my_anime_data/core/theming/text_styles.dart';

class CharacterCard extends StatelessWidget {
  CharacterCard({
    super.key,
    required this.image,
    required this.name,
    required this.animeName,
  });
  String image, name, animeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 108,
      height: 143,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(image, width: 92, height: 92, fit: BoxFit.cover),
          ),
          Text(
            name,
            style: TextStyles.semiBold16,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          Text(
            animeName,
            style: TextStyles.semiBold14.copyWith(
              color: ColorManager.secondary,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
