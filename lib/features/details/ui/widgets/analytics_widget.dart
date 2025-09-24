import 'package:flutter/material.dart';
import 'package:my_anime_data/core/widgets/analytics_item.dart';

class AnalyticsWidget extends StatelessWidget {
  const AnalyticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnalyticsItem(
          image: 'assets/images/eye.png',
          number: '2.3M',
          name: 'views',
        ),
        AnalyticsItem(
          image: 'assets/images/clap.png',
          number: '2K',
          name: 'Claps',
        ),
        AnalyticsItem(
          image: 'assets/images/seasons.png',
          number: '4',
          name: 'Seasons',
        ),
      ],
    );
  }
}
