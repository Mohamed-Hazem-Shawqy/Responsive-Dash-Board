import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/font_style.dart';
import 'package:responsive_dash_board/feature/widgets/indecators.dart';
import 'package:responsive_dash_board/feature/widgets/my_card.dart';

class MyCardPageview extends StatelessWidget {
  const MyCardPageview({super.key});
  static PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppStyle.styleSemiBold20(context)),
        ExpandablePageView(
          controller: pageController,
          children: List.generate(
            3,
            (index) => const Padding(
              padding: EdgeInsets.only(right: 8),
              child: MyCard(),
            ),
          ),
        ),
        const SizedBox(height: 19),
        Indecator(pageController: pageController),
        const Divider(
          endIndent: 20,
          indent: 20,
          height: 48,
          color: Color(0xffF1F1F1),
        ),
      ],
    );
  }
}
