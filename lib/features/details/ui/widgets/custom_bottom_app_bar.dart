import 'package:flutter/material.dart';
import 'package:my_anime_data/core/theming/colors.dart';
import 'package:my_anime_data/core/theming/text_styles.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: ColorManager.darkPurple,
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor: Color(0xff8D8998).withAlpha(300),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(37),
              ),
            ),
            child: SizedBox(
              width: 110,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/stop_watch.png',
                    width: 22,
                    height: 19,
                  ),
                  SizedBox(width: 5),
                  Text('Preview', style: TextStyles.bold14),
                ],
              ),
            ),
          ),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor: Color(0xff6758FE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(37),
              ),
            ),
            child: SizedBox(
              width: 110,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/eye.png', width: 22, height: 19),
                  SizedBox(width: 5),
                  Text('Watch Now', style: TextStyles.bold14),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
