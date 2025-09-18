import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/images_generate.dart';
import 'package:responsive_dash_board/feature/widgets/lower_card_text.dart';
import 'package:responsive_dash_board/feature/widgets/upper_card_text.dart';

class CardShape extends StatelessWidget {
  const CardShape({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imagesCard),
          ),
          color: Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const UpperCardText(),
            const Expanded(child: SizedBox()),
            const LowerCardText(),
            const Flexible(child: SizedBox(height: 24)),
          ],
        ),
      ),
    );
  }
}
