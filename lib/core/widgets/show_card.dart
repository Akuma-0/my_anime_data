import 'package:flutter/material.dart';
import 'package:my_anime_data/core/theming/colors.dart';
import 'package:my_anime_data/core/theming/text_styles.dart';

class ShowCard extends StatelessWidget {
  const ShowCard({
    super.key,
    required this.image,
    required this.title,
    required this.ganra,
  });
  final String image, title, ganra;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 184,
      height: 287,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: 184,
                  height: 240,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(title, style: TextStyles.bold14.copyWith(color: Colors.black)),
          SizedBox(height: 4),
          Text(
            ganra,
            style: TextStyles.medium12.copyWith(color: ColorManager.secondary),
          ),
        ],
      ),
    );
  }
}
