import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [Expanded(child: const CustomDrawer())]),
    );
  }
}
