import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/widgets/all_expenses_body.dart';
import 'package:responsive_dash_board/feature/widgets/in_come.dart';
import 'package:responsive_dash_board/feature/widgets/my_card_and_transaction_history.dart';
import 'package:responsive_dash_board/feature/widgets/qoiuck_invoice.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AllExpensesBody(),
          const QouickInvoice(),
          const SizedBox(height: 24),
          const MyCardAndTransactionHistory(),
          const SizedBox(height: 24),
          const InCome(),
        ],
      ),
    );
  }
}
