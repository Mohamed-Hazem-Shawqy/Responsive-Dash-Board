import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/widgets/all_expenses_body.dart';
import 'package:responsive_dash_board/feature/widgets/qoiuck_invoice.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [const AllExpensesBody(), const QouickInvoice()]);
  }
}
