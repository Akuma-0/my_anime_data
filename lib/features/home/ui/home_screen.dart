import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_anime_data/core/theming/text_styles.dart';
import 'package:my_anime_data/core/widgets/character_card.dart';
import 'package:my_anime_data/core/widgets/show_card.dart';
import 'package:my_anime_data/features/home/ui/widgets/nav_bar.dart';
import 'package:my_anime_data/features/home/ui/widgets/tab_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  //TabController tabController = TabController(length: 5, vsync: );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffDDE2FF), Colors.white],
            begin: Alignment.topLeft,
            stops: [0.4, 0.9],
            end: Alignment.bottomCenter,
          ),
        ),
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 160,
              top: -110,
              child: SvgPicture.asset(
                'assets/images/small_star.svg',
                width: 432,
                height: 432,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 67),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Text(
                      'Where Anime Comes Alive!',
                      style: TextStyles.bold24,
                    ),
                  ),
                  SizedBox(height: 24),
                  TabBarWidget(),
                  SizedBox(height: 24),
                  SizedBox(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ShowCard(
                          image: 'assets/images/conan.png',
                          title: 'Detective Conan',
                          ganra: 'Mystery',
                          rate: '5.0',
                        ),
                        ShowCard(
                          image: 'assets/images/hxh.png',
                          title: 'Hunter x Hunter',
                          ganra: 'Adventure',
                          rate: '4.8',
                        ),
                        ShowCard(
                          image: 'assets/images/dragon_ball.png',
                          title: 'Dragon Ball',
                          ganra: 'Action',
                          rate: '4.0',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 36),
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Text('Top Characters', style: TextStyles.bold24),
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    height: 143,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CharacterCard(
                          animeName: 'Hunter x Hunter',
                          name: 'Gon Freecss',
                          image: 'assets/images/gon.png',
                        ),
                        CharacterCard(
                          animeName: 'One Piece',
                          name: 'Monkey D. Luffy',
                          image: 'assets/images/luffy.jpg',
                        ),
                        CharacterCard(
                          animeName: 'Naruto',
                          name: 'Uzumaki Naruto',
                          image: 'assets/images/naruto.png',
                        ),
                        CharacterCard(
                          image: 'assets/images/conan_char.jpg',
                          name: 'Conan Edogawa',
                          animeName: 'Detective Conan',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: HomeScreenBottomNavBar(),
    );
  }
}
