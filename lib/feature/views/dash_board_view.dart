import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/adaptive_layout.dart';
import 'package:responsive_dash_board/feature/widgets/desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(mobileLayout: (context)=>SizedBox(), tabletLayout: (context)=>SizedBox(), desktopLayout: (context)=>DesktopLayout());
  }
}