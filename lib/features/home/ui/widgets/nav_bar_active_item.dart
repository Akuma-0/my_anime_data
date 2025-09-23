import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_anime_data/core/theming/colors.dart';
import 'package:my_anime_data/core/theming/text_styles.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image, required this.name});
  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsetsDirectional.only(end: 8),
        decoration: ShapeDecoration(
          color: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 30,
              height: 30,
              padding: EdgeInsets.all(5),
              child: SvgPicture.asset(image),
            ),
            SizedBox(width: 4),
            Text(
              name,
              style: TextStyles.semiBold14.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
