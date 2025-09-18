import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/widgets/my_card_pageview.dart';
import 'package:responsive_dash_board/feature/widgets/transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [const MyCardPageview(), const TransactionHistory()],
      ),
    );
  }
}