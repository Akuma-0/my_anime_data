import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_anime_data/core/theming/colors.dart';
import 'package:my_anime_data/core/theming/text_styles.dart';
import 'package:my_anime_data/features/upgrade_plan.dart/ui/widgets/plan_card.dart';

class UpgradePlaneScreen extends StatefulWidget {
  UpgradePlaneScreen({super.key});

  @override
  State<UpgradePlaneScreen> createState() => _UpgradePlaneScreenState();
}

class _UpgradePlaneScreenState extends State<UpgradePlaneScreen> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffD3D6FF), Colors.white],
            begin: Alignment.topLeft,
            stops: [0.1, 0.9],
            end: Alignment.bottomCenter,
          ),
        ),
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 149,
              right: -145,
              child: SvgPicture.asset('assets/images/small_star.svg'),
            ),
            Positioned(
              top: -100,
              left: -150,
              child: Image.asset('assets/images/Star 2.png'),
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 70),
                    Text('Upgrade Plan', style: TextStyles.bold22),
                    Image.asset('assets/images/Rocket Boy 1.png'),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        'Seamless Anime Experience, Ad-Free.',
                        style: TextStyles.bold24.copyWith(
                          color: Color(0xff18153F),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        'Enjoy unlimited anime streaming without interruptions.',
                        style: TextStyles.medium14.copyWith(
                          color: Color(0xffAEADB5),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 40),
                    PlanCard(
                      index: 0,
                      activeIndex: activeIndex,
                      period: 'Monthly',
                      price: '\$5 USD ',
                      per: '/month',
                      description: 'Include Family Sharing',
                      onTap: () {
                        setState(() {
                          activeIndex = 0;
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    PlanCard(
                      index: 1,
                      activeIndex: activeIndex,
                      period: 'Annually',
                      price: '\$50 USD',
                      per: ' /Year',
                      description: 'Include Family Sharing',
                      onTap: () {
                        setState(() {
                          activeIndex = 1;
                        });
                      },
                    ),
                    SizedBox(height: 30),
                    FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: ColorManager.primary,
                      ),
                      child: SizedBox(
                        width: 300,
                        height: 46,
                        child: Center(
                          child: Text('Continue', style: TextStyles.bold16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 72,
              right: 30,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('assets/images/cancel.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
