import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/text_styles.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({
    super.key,
    required this.index,
    required this.activeIndex,
    required this.period,
    required this.price,
    required this.per,
    required this.description,
    required this.onTap,
  });

  final int index;
  final int activeIndex;
  final String period, price, per, description;
  final VoidCallback onTap;

  bool get isSelected => activeIndex == index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 342,
        height: 102,
        decoration: BoxDecoration(
          color: isSelected ? ColorManager.darkPurple : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/Files & Folders 3 1.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    period,
                    style: TextStyles.bold16.copyWith(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: price,
                      style: TextStyles.bold14.copyWith(
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: per,
                          style: TextStyles.medium14.copyWith(
                            color: Color(0xffA49AD8),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyles.bold12.copyWith(color: Color(0xffA49AD8)),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 10),
                  isSelected
                      ? Icon(Icons.check_circle, color: ColorManager.primary)
                      : Icon(Icons.circle_outlined),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
