import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/feature/widgets/all_expenses_option.dart';

class AllExpensesBody extends StatelessWidget {
  const AllExpensesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          AllExpensesHeader(text: ' All Expenses'),

          const SizedBox(height: 16),
          AllExpensesOptions(),
        ],
      ),
    );
  }
}
