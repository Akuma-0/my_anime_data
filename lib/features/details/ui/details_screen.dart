import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_anime_data/core/theming/colors.dart';
import 'package:my_anime_data/core/theming/text_styles.dart';
import 'package:my_anime_data/core/widgets/genra_button.dart';
import 'package:my_anime_data/features/details/ui/widgets/analytics_widget.dart';
import 'package:my_anime_data/features/details/ui/widgets/custom_bottom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.darkPurple,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/details_show_picture.jpg',
              fit: BoxFit.cover,
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/images/Ellipse_right.png',
                    width: 153,
                    height: 130,
                  ),
                ),
                Positioned(
                  top: 190,
                  left: -10,
                  child: Image.asset(
                    'assets/images/Ellipse_left.png',
                    width: 153,
                    height: 130,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.zero,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 21.0),
                      color: Colors.grey.withAlpha(20),
                      child: Column(
                        children: [
                          SizedBox(height: 85),
                          Wrap(
                            alignment: WrapAlignment.spaceAround,
                            spacing: 8.0,
                            runSpacing: 8.0,
                            children: [
                              GenraButton(genra: 'Dark Fantasy'),
                              GenraButton(genra: 'Action'),
                              GenraButton(genra: 'Adventure'),
                            ],
                          ),
                          SizedBox(height: 20),
                          Divider(color: Color(0xff747272), thickness: 1),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: AnalyticsWidget(),
                          ),
                          Divider(color: Color(0xff747272), thickness: 1),
                          SizedBox(height: 24),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/fire.png',
                                    width: 29,
                                    height: 29,
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: Text(
                                    'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                                    style: TextStyles.medium14.copyWith(
                                      color: Color(0xffCBC4C4),
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -70,
                  child: SvgPicture.asset('assets/images/logo.svg'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
