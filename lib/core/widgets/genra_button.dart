import 'package:flutter/material.dart';
import 'package:my_anime_data/core/theming/text_styles.dart';

class GenraButton extends StatelessWidget {
 const GenraButton({super.key, required this.genra});
  final String genra;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        shadowColor: Colors.black45,
        backgroundColor: Colors.grey.withAlpha(50),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
      onPressed: () {},
      child: Text(genra, style: TextStyles.medium11),
    );
  }
}
