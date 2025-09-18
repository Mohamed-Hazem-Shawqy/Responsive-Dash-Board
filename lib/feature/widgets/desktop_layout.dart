import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/widgets/all_expenses.dart';
import 'package:responsive_dash_board/feature/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/feature/widgets/mycard_and_income.dart';


class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 28,
      children: [
        Expanded(child: const CustomDrawer()),

        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  spacing: 28,
                  children: [
                    Expanded(flex: 2, child: const AllExpenses()),
                    Expanded(child: const MycardAndIncome()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
