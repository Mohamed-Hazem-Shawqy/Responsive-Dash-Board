import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/widgets/in_come.dart';
import 'package:responsive_dash_board/feature/widgets/my_card_and_transaction_history.dart';

class MycardAndIncome extends StatelessWidget {
  const MycardAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyCardAndTransactionHistory(),
        const SizedBox(height: 24),
        Expanded(child: const InCome()),
      ],
    );
  }
}
