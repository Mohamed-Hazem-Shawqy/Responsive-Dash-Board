import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/feature/widgets/in_come_chart_shape.dart';

class InCome extends StatelessWidget {
  const InCome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          AllExpensesHeader(text: 'Income'),
          const InComeChartShape(),
        ],
      ),
    );
  }
}
