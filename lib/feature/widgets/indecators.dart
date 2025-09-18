import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Indecator extends StatelessWidget {
  const Indecator({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController, // PageController
      count: 3,
      effect: ExpandingDotsEffect(
        activeDotColor: Color(0xff4EB7F2),
        dotColor: Color(0xffE8E8E8),
      ), // your preferred effect
      onDotClicked: (index) {
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutExpo,
        );
      },
    );
  }
}