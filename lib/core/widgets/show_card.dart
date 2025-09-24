import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_anime_data/core/theming/colors.dart';
import 'package:my_anime_data/core/theming/text_styles.dart';
import 'package:my_anime_data/features/details/ui/details_screen.dart';

class ShowCard extends StatelessWidget {
  const ShowCard({
    super.key,
    required this.image,
    required this.title,
    required this.ganra,
    required this.rate,
  });
  final String image, title, ganra, rate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => DetailsScreen()));
      },
      child: Container(
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
                Positioned(
                  top: 12,
                  right: 12,

                  child: Container(
                    width: 41,
                    height: 18,
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/rate.svg'),
                        SizedBox(width: 3),
                        Text(rate, style: TextStyles.semiBold12),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(title, style: TextStyles.bold14.copyWith(color: Colors.black)),
            SizedBox(height: 4),
            Text(
              ganra,
              style: TextStyles.medium12.copyWith(
                color: ColorManager.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
