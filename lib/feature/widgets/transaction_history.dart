import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/feature/widgets/transaction_history_list.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TransactionHistoryHeader(), TransactionHistoryList(),],
    );
  }
}
