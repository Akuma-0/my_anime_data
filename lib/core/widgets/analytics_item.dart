import 'package:flutter/material.dart';
import 'package:my_anime_data/core/theming/text_styles.dart';

class AnalyticsItem extends StatelessWidget {
  AnalyticsItem({
    super.key,
    required this.image,
    required this.number,
    required this.name,
  });
  final String image, number, name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image, width: 17, height: 16),
        SizedBox(width: 5),
        RichText(
          text: TextSpan(
            text: number,
            style: TextStyles.regular13.copyWith(fontFamily: 'inter'),
            children: [TextSpan(text: ' $name', style: TextStyles.regular13)],
          ),
        ),
      ],
    );
  }
}
