import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/feature/widgets/mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: const CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(flex: 2, child: MobileLayout()),
      ],
    );
  }
}
